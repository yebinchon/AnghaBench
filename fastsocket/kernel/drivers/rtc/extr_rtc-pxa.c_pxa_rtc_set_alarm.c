
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct pxa_rtc {int lock; } ;
struct device {int dummy; } ;


 int RDAR1 ;
 int RTSR ;
 int RTSR_RDALE1 ;
 int RYAR1 ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int rdxr_calc (int *) ;
 int rtc_readl (struct pxa_rtc*,int ) ;
 int rtc_writel (struct pxa_rtc*,int ,int ) ;
 int ryxr_calc (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int pxa_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);
 u32 rtsr;

 spin_lock_irq(&pxa_rtc->lock);

 rtc_writel(pxa_rtc, RYAR1, ryxr_calc(&alrm->time));
 rtc_writel(pxa_rtc, RDAR1, rdxr_calc(&alrm->time));

 rtsr = rtc_readl(pxa_rtc, RTSR);
 if (alrm->enabled)
  rtsr |= RTSR_RDALE1;
 else
  rtsr &= ~RTSR_RDALE1;
 rtc_writel(pxa_rtc, RTSR, rtsr);

 spin_unlock_irq(&pxa_rtc->lock);

 return 0;
}
