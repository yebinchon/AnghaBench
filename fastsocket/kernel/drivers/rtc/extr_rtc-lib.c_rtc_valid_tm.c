
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_mday; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mon; } ;


 int EINVAL ;
 int rtc_month_days (scalar_t__,int) ;

int rtc_valid_tm(struct rtc_time *tm)
{
 if (tm->tm_year < 70
  || ((unsigned)tm->tm_mon) >= 12
  || tm->tm_mday < 1
  || tm->tm_mday > rtc_month_days(tm->tm_mon, tm->tm_year + 1900)
  || ((unsigned)tm->tm_hour) >= 24
  || ((unsigned)tm->tm_min) >= 60
  || ((unsigned)tm->tm_sec) >= 60)
  return -EINVAL;

 return 0;
}
