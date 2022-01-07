
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rtc_time {int tm_year; int tm_mon; } ;


 scalar_t__ beat_rtc_read (scalar_t__*) ;
 int to_tm (scalar_t__,struct rtc_time*) ;

void beat_get_rtc_time(struct rtc_time *rtc_time)
{
 u64 tim;

 if (beat_rtc_read(&tim))
  tim = 0;
 to_tm(tim, rtc_time);
 rtc_time->tm_year -= 1900;
 rtc_time->tm_mon -= 1;
}
