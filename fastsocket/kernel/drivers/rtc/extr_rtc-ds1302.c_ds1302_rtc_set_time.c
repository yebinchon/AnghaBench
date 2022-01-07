
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct device {int dummy; } ;


 int RTC_ADDR_DATE ;
 int RTC_ADDR_DAY ;
 int RTC_ADDR_HOUR ;
 int RTC_ADDR_MIN ;
 int RTC_ADDR_MON ;
 int RTC_ADDR_SEC ;
 int RTC_ADDR_YEAR ;
 int bin2bcd (int) ;
 int ds1302_readbyte (int ) ;
 int ds1302_writebyte (int ,int) ;

__attribute__((used)) static int ds1302_rtc_set_time(struct device *dev, struct rtc_time *tm)
{

 ds1302_writebyte(RTC_ADDR_SEC, ds1302_readbyte(RTC_ADDR_SEC) | 0x80);

 ds1302_writebyte(RTC_ADDR_SEC, bin2bcd(tm->tm_sec));
 ds1302_writebyte(RTC_ADDR_MIN, bin2bcd(tm->tm_min));
 ds1302_writebyte(RTC_ADDR_HOUR, bin2bcd(tm->tm_hour));
 ds1302_writebyte(RTC_ADDR_DAY, bin2bcd(tm->tm_wday));
 ds1302_writebyte(RTC_ADDR_DATE, bin2bcd(tm->tm_mday));
 ds1302_writebyte(RTC_ADDR_MON, bin2bcd(tm->tm_mon + 1));
 ds1302_writebyte(RTC_ADDR_YEAR, bin2bcd(tm->tm_year % 100));


 ds1302_writebyte(RTC_ADDR_SEC, ds1302_readbyte(RTC_ADDR_SEC) & ~0x80);

 return 0;
}
