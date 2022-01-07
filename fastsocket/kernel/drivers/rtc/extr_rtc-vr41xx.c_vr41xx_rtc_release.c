
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ECMPHREG ;
 int ECMPLREG ;
 int ECMPMREG ;
 int RTCL1HREG ;
 int RTCL1LREG ;
 int aie_irq ;
 int disable_irq (int ) ;
 int pie_irq ;
 int rtc1_write (int ,int ) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void vr41xx_rtc_release(struct device *dev)
{

 spin_lock_irq(&rtc_lock);

 rtc1_write(ECMPLREG, 0);
 rtc1_write(ECMPMREG, 0);
 rtc1_write(ECMPHREG, 0);
 rtc1_write(RTCL1LREG, 0);
 rtc1_write(RTCL1HREG, 0);

 spin_unlock_irq(&rtc_lock);

 disable_irq(aie_irq);
 disable_irq(pie_irq);
}
