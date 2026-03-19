DROP TABLE IF EXISTS market_prices;
DROP TABLE IF EXISTS news_articles;

CREATE TABLE news_articles (
    article_id SERIAL PRIMARY KEY,
    source TEXT,
    published_at TIMESTAMP,
    headline TEXT NOT NULL,
    summary TEXT,
    url TEXT,
    policy_type TEXT,
    event_date DATE
);

CREATE TABLE market_prices (
    price_id SERIAL PRIMARY KEY,
    ticker TEXT NOT NULL,
    date DATE NOT NULL,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    adj_close NUMERIC,
    volume BIGINT,
    daily_return NUMERIC
);