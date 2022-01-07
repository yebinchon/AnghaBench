
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;


 unsigned long mktime (scalar_t__,scalar_t__,int ,int ,int ,int ) ;

int rtc_tm_to_time(struct rtc_time *tm, unsigned long *time)
{
 *time = mktime(tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday,
   tm->tm_hour, tm->tm_min, tm->tm_sec);
 return 0;
}
