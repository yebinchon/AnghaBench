
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_rtc {int irq_1Hz; int irq_Alrm; int lock; } ;
struct device {int dummy; } ;


 int RTSR_HZE ;
 int RTSR_PIALE ;
 int RTSR_RDALE1 ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int free_irq (int ,struct device*) ;
 int rtsr_clear_bits (struct pxa_rtc*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void pxa_rtc_release(struct device *dev)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);

 spin_lock_irq(&pxa_rtc->lock);
 rtsr_clear_bits(pxa_rtc, RTSR_PIALE | RTSR_RDALE1 | RTSR_HZE);
 spin_unlock_irq(&pxa_rtc->lock);

 free_irq(pxa_rtc->irq_Alrm, dev);
 free_irq(pxa_rtc->irq_1Hz, dev);
}
