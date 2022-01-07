
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_rtc {int lock; } ;
struct device {int dummy; } ;


 int ENOIOCTLCMD ;




 int RTSR_HZE ;
 int RTSR_RDALE1 ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int rtsr_clear_bits (struct pxa_rtc*,int ) ;
 int rtsr_set_bits (struct pxa_rtc*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int pxa_rtc_ioctl(struct device *dev, unsigned int cmd,
  unsigned long arg)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);
 int ret = 0;

 spin_lock_irq(&pxa_rtc->lock);
 switch (cmd) {
 case 131:
  rtsr_clear_bits(pxa_rtc, RTSR_RDALE1);
  break;
 case 130:
  rtsr_set_bits(pxa_rtc, RTSR_RDALE1);
  break;
 case 129:
  rtsr_clear_bits(pxa_rtc, RTSR_HZE);
  break;
 case 128:
  rtsr_set_bits(pxa_rtc, RTSR_HZE);
  break;
 default:
  ret = -ENOIOCTLCMD;
 }

 spin_unlock_irq(&pxa_rtc->lock);
 return ret;
}
