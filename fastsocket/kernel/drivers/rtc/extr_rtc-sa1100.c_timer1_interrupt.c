
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OSSR ;
 int OSSR_M1 ;
 int RTC_IRQF ;
 int RTC_PF ;
 struct rtc_device* platform_get_drvdata (struct platform_device*) ;
 int rtc_freq ;
 int rtc_timer1_count ;
 int rtc_update_irq (struct rtc_device*,int,int) ;
 int timer_freq ;
 struct platform_device* to_platform_device (void*) ;

__attribute__((used)) static irqreturn_t timer1_interrupt(int irq, void *dev_id)
{
 struct platform_device *pdev = to_platform_device(dev_id);
 struct rtc_device *rtc = platform_get_drvdata(pdev);
 OSSR = OSSR_M1;

 rtc_update_irq(rtc, rtc_timer1_count, RTC_PF | RTC_IRQF);

 if (rtc_timer1_count == 1)
  rtc_timer1_count = (rtc_freq * ((1 << 30) / (timer_freq >> 2)));

 return IRQ_HANDLED;
}
