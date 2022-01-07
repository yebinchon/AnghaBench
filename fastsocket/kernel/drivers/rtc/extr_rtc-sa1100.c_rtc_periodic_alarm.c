
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_mday; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mon; } ;



__attribute__((used)) static inline int rtc_periodic_alarm(struct rtc_time *tm)
{
 return (tm->tm_year == -1) ||
  ((unsigned)tm->tm_mon >= 12) ||
  ((unsigned)(tm->tm_mday - 1) >= 31) ||
  ((unsigned)tm->tm_hour > 23) ||
  ((unsigned)tm->tm_min > 59) ||
  ((unsigned)tm->tm_sec > 59);
}
