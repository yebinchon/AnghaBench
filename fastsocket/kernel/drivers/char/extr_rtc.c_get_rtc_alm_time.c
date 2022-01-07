
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {void* tm_hour; void* tm_min; void* tm_sec; } ;


 void* CMOS_READ (int ) ;
 scalar_t__ RTC_ALWAYS_BCD ;
 int RTC_CONTROL ;
 unsigned char RTC_DM_BINARY ;
 int RTC_HOURS_ALARM ;
 int RTC_MINUTES_ALARM ;
 int RTC_SECONDS_ALARM ;
 void* bcd2bin (void*) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void get_rtc_alm_time(struct rtc_time *alm_tm)
{
 unsigned char ctrl;





 spin_lock_irq(&rtc_lock);
 alm_tm->tm_sec = CMOS_READ(RTC_SECONDS_ALARM);
 alm_tm->tm_min = CMOS_READ(RTC_MINUTES_ALARM);
 alm_tm->tm_hour = CMOS_READ(RTC_HOURS_ALARM);
 ctrl = CMOS_READ(RTC_CONTROL);
 spin_unlock_irq(&rtc_lock);

 if (!(ctrl & RTC_DM_BINARY) || RTC_ALWAYS_BCD) {
  alm_tm->tm_sec = bcd2bin(alm_tm->tm_sec);
  alm_tm->tm_min = bcd2bin(alm_tm->tm_min);
  alm_tm->tm_hour = bcd2bin(alm_tm->tm_hour);
 }
}
