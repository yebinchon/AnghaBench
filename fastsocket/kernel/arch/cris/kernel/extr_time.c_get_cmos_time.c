
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CMOS_READ (int ) ;
 int RTC_DAY_OF_MONTH ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 int RTC_YEAR ;
 unsigned int bcd2bin (unsigned int) ;
 unsigned long mktime (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

unsigned long
get_cmos_time(void)
{
 unsigned int year, mon, day, hour, min, sec;

 sec = CMOS_READ(RTC_SECONDS);
 min = CMOS_READ(RTC_MINUTES);
 hour = CMOS_READ(RTC_HOURS);
 day = CMOS_READ(RTC_DAY_OF_MONTH);
 mon = CMOS_READ(RTC_MONTH);
 year = CMOS_READ(RTC_YEAR);

 sec = bcd2bin(sec);
 min = bcd2bin(min);
 hour = bcd2bin(hour);
 day = bcd2bin(day);
 mon = bcd2bin(mon);
 year = bcd2bin(year);

 if ((year += 1900) < 1970)
  year += 100;

 return mktime(year, mon, day, hour, min, sec);
}
