
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {unsigned int periodic_freq; int lock; scalar_t__ regbase; } ;
struct device {int dummy; } ;


 unsigned int PF_HP ;
 unsigned int PF_KOU ;
 scalar_t__ RCR2 ;
 unsigned int RCR2_PEF ;
 unsigned int RCR2_PESMASK ;
 struct sh_rtc* dev_get_drvdata (struct device*) ;
 unsigned int readb (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int sh_rtc_irq_set_state(struct device *dev, int enable)
{
 struct sh_rtc *rtc = dev_get_drvdata(dev);
 unsigned int tmp;

 spin_lock_irq(&rtc->lock);

 tmp = readb(rtc->regbase + RCR2);

 if (enable) {
  rtc->periodic_freq |= PF_KOU;
  tmp &= ~RCR2_PEF;
  tmp |= (rtc->periodic_freq & ~PF_HP);
 } else {
  rtc->periodic_freq &= ~PF_KOU;
  tmp &= ~(RCR2_PESMASK | RCR2_PEF);
 }

 writeb(tmp, rtc->regbase + RCR2);

 spin_unlock_irq(&rtc->lock);

 return 0;
}
