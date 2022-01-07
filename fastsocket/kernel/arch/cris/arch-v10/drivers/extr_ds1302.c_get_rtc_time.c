
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;


 void* CMOS_READ (int ) ;
 int RTC_DAY_OF_MONTH ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 int RTC_YEAR ;
 void* bcd2bin (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void
get_rtc_time(struct rtc_time *rtc_tm)
{
 unsigned long flags;

 local_irq_save(flags);

 rtc_tm->tm_sec = CMOS_READ(RTC_SECONDS);
 rtc_tm->tm_min = CMOS_READ(RTC_MINUTES);
 rtc_tm->tm_hour = CMOS_READ(RTC_HOURS);
 rtc_tm->tm_mday = CMOS_READ(RTC_DAY_OF_MONTH);
 rtc_tm->tm_mon = CMOS_READ(RTC_MONTH);
 rtc_tm->tm_year = CMOS_READ(RTC_YEAR);

 local_irq_restore(flags);

 rtc_tm->tm_sec = bcd2bin(rtc_tm->tm_sec);
 rtc_tm->tm_min = bcd2bin(rtc_tm->tm_min);
 rtc_tm->tm_hour = bcd2bin(rtc_tm->tm_hour);
 rtc_tm->tm_mday = bcd2bin(rtc_tm->tm_mday);
 rtc_tm->tm_mon = bcd2bin(rtc_tm->tm_mon);
 rtc_tm->tm_year = bcd2bin(rtc_tm->tm_year);






 if (rtc_tm->tm_year <= 69)
  rtc_tm->tm_year += 100;

 rtc_tm->tm_mon--;
}
