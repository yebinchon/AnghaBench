
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int rtc_update_irq (struct rtc_device*,int,int ) ;

__attribute__((used)) static irqreturn_t pl031_interrupt(int irq, void *dev_id)
{
 struct rtc_device *rtc = dev_id;

 rtc_update_irq(rtc, 1, RTC_AF);

 return IRQ_HANDLED;
}
