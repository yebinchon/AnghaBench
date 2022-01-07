
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_rtc {int dummy; } ;
struct device {int dummy; } ;


 int RTSR_PIALE ;
 int RTSR_PICE ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int rtsr_clear_bits (struct pxa_rtc*,int) ;
 int rtsr_set_bits (struct pxa_rtc*,int) ;

__attribute__((used)) static int pxa_periodic_irq_set_state(struct device *dev, int enabled)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);

 if (enabled)
  rtsr_set_bits(pxa_rtc, RTSR_PIALE | RTSR_PICE);
 else
  rtsr_clear_bits(pxa_rtc, RTSR_PIALE | RTSR_PICE);

 return 0;
}
