
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 int ECMPHREG ;
 int ECMPLREG ;
 int ECMPMREG ;
 int aie_irq ;
 scalar_t__ alarm_enabled ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 unsigned long mktime (scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int rtc1_write (int ,int ) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int vr41xx_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 unsigned long alarm_sec;
 struct rtc_time *time = &wkalrm->time;

 alarm_sec = mktime(time->tm_year + 1900, time->tm_mon + 1, time->tm_mday,
                    time->tm_hour, time->tm_min, time->tm_sec);

 spin_lock_irq(&rtc_lock);

 if (alarm_enabled)
  disable_irq(aie_irq);

 rtc1_write(ECMPLREG, (uint16_t)(alarm_sec << 15));
 rtc1_write(ECMPMREG, (uint16_t)(alarm_sec >> 1));
 rtc1_write(ECMPHREG, (uint16_t)(alarm_sec >> 17));

 if (wkalrm->enabled)
  enable_irq(aie_irq);

 alarm_enabled = wkalrm->enabled;

 spin_unlock_irq(&rtc_lock);

 return 0;
}
