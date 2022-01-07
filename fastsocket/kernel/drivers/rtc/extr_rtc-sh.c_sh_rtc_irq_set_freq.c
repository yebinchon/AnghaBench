
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int periodic_freq; int lock; } ;
struct device {int dummy; } ;


 int ENOTSUPP ;
 int PF_HP ;
 int PF_MASK ;
 struct sh_rtc* dev_get_drvdata (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sh_rtc_irq_set_freq(struct device *dev, int freq)
{
 struct sh_rtc *rtc = dev_get_drvdata(dev);
 int tmp, ret = 0;

 spin_lock_irq(&rtc->lock);
 tmp = rtc->periodic_freq & PF_MASK;

 switch (freq) {
 case 0:
  rtc->periodic_freq = 0x00;
  break;
 case 1:
  rtc->periodic_freq = 0x60;
  break;
 case 2:
  rtc->periodic_freq = 0x50;
  break;
 case 4:
  rtc->periodic_freq = 0x40;
  break;
 case 8:
  rtc->periodic_freq = 0x30 | PF_HP;
  break;
 case 16:
  rtc->periodic_freq = 0x30;
  break;
 case 32:
  rtc->periodic_freq = 0x20 | PF_HP;
  break;
 case 64:
  rtc->periodic_freq = 0x20;
  break;
 case 128:
  rtc->periodic_freq = 0x10 | PF_HP;
  break;
 case 256:
  rtc->periodic_freq = 0x10;
  break;
 default:
  ret = -ENOTSUPP;
 }

 if (ret == 0)
  rtc->periodic_freq |= tmp;

 spin_unlock_irq(&rtc->lock);
 return ret;
}
