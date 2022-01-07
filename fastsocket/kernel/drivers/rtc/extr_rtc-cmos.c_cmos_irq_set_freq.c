
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cmos_rtc {int irq; } ;


 int CMOS_WRITE (int,int ) ;
 int EINVAL ;
 int ENXIO ;
 int RTC_FREQ_SELECT ;
 int RTC_REF_CLCK_32KHZ ;
 struct cmos_rtc* dev_get_drvdata (struct device*) ;
 int ffs (int) ;
 int hpet_set_periodic_freq (int) ;
 int is_power_of_2 (int) ;
 int is_valid_irq (int ) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cmos_irq_set_freq(struct device *dev, int freq)
{
 struct cmos_rtc *cmos = dev_get_drvdata(dev);
 int f;
 unsigned long flags;

 if (!is_valid_irq(cmos->irq))
  return -ENXIO;

 if (!is_power_of_2(freq))
  return -EINVAL;

 f = ffs(freq);
 if (f-- > 16)
  return -EINVAL;
 f = 16 - f;

 spin_lock_irqsave(&rtc_lock, flags);
 hpet_set_periodic_freq(freq);
 CMOS_WRITE(RTC_REF_CLCK_32KHZ | f, RTC_FREQ_SELECT);
 spin_unlock_irqrestore(&rtc_lock, flags);

 return 0;
}
