
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int OMAP_RTC_DAYS_REG ;
 int OMAP_RTC_HOURS_REG ;
 int OMAP_RTC_MINUTES_REG ;
 int OMAP_RTC_MONTHS_REG ;
 int OMAP_RTC_SECONDS_REG ;
 int OMAP_RTC_YEARS_REG ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int rtc_wait_not_busy () ;
 int rtc_write (int ,int ) ;
 scalar_t__ tm2bcd (struct rtc_time*) ;

__attribute__((used)) static int omap_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 if (tm2bcd(tm) < 0)
  return -EINVAL;
 local_irq_disable();
 rtc_wait_not_busy();

 rtc_write(tm->tm_year, OMAP_RTC_YEARS_REG);
 rtc_write(tm->tm_mon, OMAP_RTC_MONTHS_REG);
 rtc_write(tm->tm_mday, OMAP_RTC_DAYS_REG);
 rtc_write(tm->tm_hour, OMAP_RTC_HOURS_REG);
 rtc_write(tm->tm_min, OMAP_RTC_MINUTES_REG);
 rtc_write(tm->tm_sec, OMAP_RTC_SECONDS_REG);

 local_irq_enable();

 return 0;
}
