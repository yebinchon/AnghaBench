
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_rtc {int irq_1Hz; int irq_Alrm; } ;
struct device {int dummy; } ;


 int IRQF_DISABLED ;
 int dev_err (struct device*,char*,int ,int) ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int free_irq (int ,struct device*) ;
 int pxa_rtc_irq ;
 int request_irq (int ,int ,int ,char*,struct device*) ;

__attribute__((used)) static int pxa_rtc_open(struct device *dev)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);
 int ret;

 ret = request_irq(pxa_rtc->irq_1Hz, pxa_rtc_irq, IRQF_DISABLED,
     "rtc 1Hz", dev);
 if (ret < 0) {
  dev_err(dev, "can't get irq %i, err %d\n", pxa_rtc->irq_1Hz,
   ret);
  goto err_irq_1Hz;
 }
 ret = request_irq(pxa_rtc->irq_Alrm, pxa_rtc_irq, IRQF_DISABLED,
     "rtc Alrm", dev);
 if (ret < 0) {
  dev_err(dev, "can't get irq %i, err %d\n", pxa_rtc->irq_Alrm,
   ret);
  goto err_irq_Alrm;
 }

 return 0;

err_irq_Alrm:
 free_irq(pxa_rtc->irq_1Hz, dev);
err_irq_1Hz:
 return ret;
}
