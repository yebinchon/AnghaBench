
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_hour; int tm_min; int tm_sec; int tm_year; int tm_mon; int tm_mday; } ;


 int get_rtc_time (struct rtc_time*) ;
 int sprintf (char*,char*,int,int,int,int,int,int) ;

int
get_rtc_status(char *buf)
{
 char *p;
 struct rtc_time tm;

 p = buf;

 get_rtc_time(&tm);






 p += sprintf(p,
  "rtc_time\t: %02d:%02d:%02d\n"
  "rtc_date\t: %04d-%02d-%02d\n",
  tm.tm_hour, tm.tm_min, tm.tm_sec,
  tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday);

 return p - buf;
}
