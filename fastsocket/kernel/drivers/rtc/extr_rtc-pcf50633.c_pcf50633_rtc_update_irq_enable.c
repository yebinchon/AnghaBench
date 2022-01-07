
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_rtc {unsigned int second_enabled; int pcf; } ;
struct device {int dummy; } ;


 int PCF50633_IRQ_SECOND ;
 struct pcf50633_rtc* dev_get_drvdata (struct device*) ;
 int pcf50633_irq_mask (int ,int ) ;
 int pcf50633_irq_unmask (int ,int ) ;

__attribute__((used)) static int
pcf50633_rtc_update_irq_enable(struct device *dev, unsigned int enabled)
{
 struct pcf50633_rtc *rtc = dev_get_drvdata(dev);
 int err;

 if (enabled)
  err = pcf50633_irq_unmask(rtc->pcf, PCF50633_IRQ_SECOND);
 else
  err = pcf50633_irq_mask(rtc->pcf, PCF50633_IRQ_SECOND);

 if (err < 0)
  return err;

 rtc->second_enabled = enabled;

 return 0;
}
