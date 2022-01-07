
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;


 int OMAP_RTC_DAYS_REG ;
 int OMAP_RTC_HOURS_REG ;
 int OMAP_RTC_MINUTES_REG ;
 int OMAP_RTC_MONTHS_REG ;
 int OMAP_RTC_SECONDS_REG ;
 int OMAP_RTC_YEARS_REG ;
 int bcd2tm (struct rtc_time*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 void* rtc_read (int ) ;
 int rtc_wait_not_busy () ;

__attribute__((used)) static int omap_rtc_read_time(struct device *dev, struct rtc_time *tm)
{

 local_irq_disable();
 rtc_wait_not_busy();

 tm->tm_sec = rtc_read(OMAP_RTC_SECONDS_REG);
 tm->tm_min = rtc_read(OMAP_RTC_MINUTES_REG);
 tm->tm_hour = rtc_read(OMAP_RTC_HOURS_REG);
 tm->tm_mday = rtc_read(OMAP_RTC_DAYS_REG);
 tm->tm_mon = rtc_read(OMAP_RTC_MONTHS_REG);
 tm->tm_year = rtc_read(OMAP_RTC_YEARS_REG);

 local_irq_enable();

 bcd2tm(tm);
 return 0;
}
