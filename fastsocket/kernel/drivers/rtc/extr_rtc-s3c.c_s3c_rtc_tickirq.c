
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_IRQF ;
 int RTC_PF ;
 int rtc_update_irq (struct rtc_device*,int,int) ;

__attribute__((used)) static irqreturn_t s3c_rtc_tickirq(int irq, void *id)
{
 struct rtc_device *rdev = id;

 rtc_update_irq(rdev, 1, RTC_PF | RTC_IRQF);
 return IRQ_HANDLED;
}
