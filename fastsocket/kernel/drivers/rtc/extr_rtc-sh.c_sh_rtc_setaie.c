
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int lock; scalar_t__ regbase; } ;
struct device {int dummy; } ;


 scalar_t__ RCR1 ;
 unsigned int RCR1_AIE ;
 struct sh_rtc* dev_get_drvdata (struct device*) ;
 unsigned int readb (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void sh_rtc_setaie(struct device *dev, unsigned int enable)
{
 struct sh_rtc *rtc = dev_get_drvdata(dev);
 unsigned int tmp;

 spin_lock_irq(&rtc->lock);

 tmp = readb(rtc->regbase + RCR1);

 if (enable)
  tmp |= RCR1_AIE;
 else
  tmp &= ~RCR1_AIE;

 writeb(tmp, rtc->regbase + RCR1);

 spin_unlock_irq(&rtc->lock);
}
