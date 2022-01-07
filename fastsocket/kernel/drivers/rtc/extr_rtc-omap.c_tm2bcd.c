
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;


 int EINVAL ;
 void* bin2bcd (int) ;
 scalar_t__ rtc_valid_tm (struct rtc_time*) ;

__attribute__((used)) static int tm2bcd(struct rtc_time *tm)
{
 if (rtc_valid_tm(tm) != 0)
  return -EINVAL;

 tm->tm_sec = bin2bcd(tm->tm_sec);
 tm->tm_min = bin2bcd(tm->tm_min);
 tm->tm_hour = bin2bcd(tm->tm_hour);
 tm->tm_mday = bin2bcd(tm->tm_mday);

 tm->tm_mon = bin2bcd(tm->tm_mon + 1);


 if (tm->tm_year < 100 || tm->tm_year > 199)
  return -EINVAL;
 tm->tm_year = bin2bcd(tm->tm_year - 100);

 return 0;
}
