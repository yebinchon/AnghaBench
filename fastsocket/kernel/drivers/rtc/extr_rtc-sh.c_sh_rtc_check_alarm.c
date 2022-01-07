
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_wday; int tm_hour; int tm_min; int tm_sec; } ;


 int EINVAL ;

__attribute__((used)) static int sh_rtc_check_alarm(struct rtc_time *tm)
{






 if (tm->tm_year == 0xffff)
  tm->tm_year = -1;
 if (tm->tm_mon >= 0xff)
  tm->tm_mon = -1;
 if (tm->tm_mday >= 0xff)
  tm->tm_mday = -1;
 if (tm->tm_wday >= 0xff)
  tm->tm_wday = -1;
 if (tm->tm_hour >= 0xff)
  tm->tm_hour = -1;
 if (tm->tm_min >= 0xff)
  tm->tm_min = -1;
 if (tm->tm_sec >= 0xff)
  tm->tm_sec = -1;

 if (tm->tm_year > 9999 ||
  tm->tm_mon >= 12 ||
  tm->tm_mday == 0 || tm->tm_mday >= 32 ||
  tm->tm_wday >= 7 ||
  tm->tm_hour >= 24 ||
  tm->tm_min >= 60 ||
  tm->tm_sec >= 60)
  return -EINVAL;

 return 0;
}
