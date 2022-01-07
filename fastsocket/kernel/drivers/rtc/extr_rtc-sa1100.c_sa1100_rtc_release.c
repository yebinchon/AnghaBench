
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IRQ_OST1 ;
 int IRQ_RTC1Hz ;
 int IRQ_RTCAlrm ;
 int OIER ;
 int OIER_E1 ;
 int OSSR ;
 int OSSR_M1 ;
 scalar_t__ RTSR ;
 int free_irq (int ,struct device*) ;
 int sa1100_rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void sa1100_rtc_release(struct device *dev)
{
 spin_lock_irq(&sa1100_rtc_lock);
 RTSR = 0;
 OIER &= ~OIER_E1;
 OSSR = OSSR_M1;
 spin_unlock_irq(&sa1100_rtc_lock);

 free_irq(IRQ_OST1, dev);
 free_irq(IRQ_RTCAlrm, dev);
 free_irq(IRQ_RTC1Hz, dev);
}
