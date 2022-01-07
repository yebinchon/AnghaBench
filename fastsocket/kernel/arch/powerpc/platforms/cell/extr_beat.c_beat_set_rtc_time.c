
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;


 scalar_t__ beat_rtc_write (int ) ;
 int mktime (scalar_t__,scalar_t__,int ,int ,int ,int ) ;

int beat_set_rtc_time(struct rtc_time *rtc_time)
{
 u64 tim;
 tim = mktime(rtc_time->tm_year+1900,
       rtc_time->tm_mon+1, rtc_time->tm_mday,
       rtc_time->tm_hour, rtc_time->tm_min, rtc_time->tm_sec);
 if (beat_rtc_write(tim))
  return -1;
 return 0;
}
