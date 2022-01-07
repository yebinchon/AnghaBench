
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct m48t59_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t59_private {int rtc; int lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int M48T59_FLAGS ;
 int M48T59_FLAGS_AF ;
 int M48T59_READ (int ) ;
 int RTC_AF ;
 int RTC_IRQF ;
 struct m48t59_private* platform_get_drvdata (struct platform_device*) ;
 int rtc_update_irq (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static irqreturn_t m48t59_rtc_interrupt(int irq, void *dev_id)
{
 struct device *dev = (struct device *)dev_id;
 struct platform_device *pdev = to_platform_device(dev);
 struct m48t59_plat_data *pdata = pdev->dev.platform_data;
 struct m48t59_private *m48t59 = platform_get_drvdata(pdev);
 u8 event;

 spin_lock(&m48t59->lock);
 event = M48T59_READ(M48T59_FLAGS);
 spin_unlock(&m48t59->lock);

 if (event & M48T59_FLAGS_AF) {
  rtc_update_irq(m48t59->rtc, 1, (RTC_AF | RTC_IRQF));
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
