
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int OMAP_RTC_ALARM_DAYS_REG ;
 int OMAP_RTC_ALARM_HOURS_REG ;
 int OMAP_RTC_ALARM_MINUTES_REG ;
 int OMAP_RTC_ALARM_MONTHS_REG ;
 int OMAP_RTC_ALARM_SECONDS_REG ;
 int OMAP_RTC_ALARM_YEARS_REG ;
 int OMAP_RTC_INTERRUPTS_IT_ALARM ;
 int OMAP_RTC_INTERRUPTS_REG ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int rtc_read (int ) ;
 int rtc_wait_not_busy () ;
 int rtc_write (int ,int ) ;
 scalar_t__ tm2bcd (TYPE_1__*) ;

__attribute__((used)) static int omap_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 u8 reg;

 if (tm2bcd(&alm->time) < 0)
  return -EINVAL;

 local_irq_disable();
 rtc_wait_not_busy();

 rtc_write(alm->time.tm_year, OMAP_RTC_ALARM_YEARS_REG);
 rtc_write(alm->time.tm_mon, OMAP_RTC_ALARM_MONTHS_REG);
 rtc_write(alm->time.tm_mday, OMAP_RTC_ALARM_DAYS_REG);
 rtc_write(alm->time.tm_hour, OMAP_RTC_ALARM_HOURS_REG);
 rtc_write(alm->time.tm_min, OMAP_RTC_ALARM_MINUTES_REG);
 rtc_write(alm->time.tm_sec, OMAP_RTC_ALARM_SECONDS_REG);

 reg = rtc_read(OMAP_RTC_INTERRUPTS_REG);
 if (alm->enabled)
  reg |= OMAP_RTC_INTERRUPTS_IT_ALARM;
 else
  reg &= ~OMAP_RTC_INTERRUPTS_IT_ALARM;
 rtc_write(reg, OMAP_RTC_INTERRUPTS_REG);

 local_irq_enable();

 return 0;
}
