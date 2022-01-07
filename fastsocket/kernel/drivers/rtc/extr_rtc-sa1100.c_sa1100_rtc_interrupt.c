
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_UF ;
 unsigned int RTSR ;
 unsigned int RTSR_AL ;
 unsigned int RTSR_ALE ;
 unsigned int RTSR_HZ ;
 unsigned int RTSR_HZE ;
 struct rtc_device* platform_get_drvdata (struct platform_device*) ;
 int rtc_alarm ;
 scalar_t__ rtc_periodic_alarm (int *) ;
 int rtc_update_alarm (int *) ;
 int rtc_update_irq (struct rtc_device*,int,unsigned long) ;
 int sa1100_rtc_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct platform_device* to_platform_device (void*) ;

__attribute__((used)) static irqreturn_t sa1100_rtc_interrupt(int irq, void *dev_id)
{
 struct platform_device *pdev = to_platform_device(dev_id);
 struct rtc_device *rtc = platform_get_drvdata(pdev);
 unsigned int rtsr;
 unsigned long events = 0;

 spin_lock(&sa1100_rtc_lock);

 rtsr = RTSR;

 RTSR = 0;
 RTSR = (RTSR_AL | RTSR_HZ) & (rtsr >> 2);


 if (rtsr & RTSR_AL)
  rtsr &= ~RTSR_ALE;
 RTSR = rtsr & (RTSR_ALE | RTSR_HZE);


 if (rtsr & RTSR_AL)
  events |= RTC_AF | RTC_IRQF;
 if (rtsr & RTSR_HZ)
  events |= RTC_UF | RTC_IRQF;

 rtc_update_irq(rtc, 1, events);

 if (rtsr & RTSR_AL && rtc_periodic_alarm(&rtc_alarm))
  rtc_update_alarm(&rtc_alarm);

 spin_unlock(&sa1100_rtc_lock);

 return IRQ_HANDLED;
}
