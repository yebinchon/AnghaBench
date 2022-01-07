
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl030_rtc {scalar_t__ base; int rtc; } ;
struct amba_id {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct amba_device {int * irq; int dev; TYPE_1__ res; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_DISABLED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ RTC_CR ;
 scalar_t__ RTC_EOI ;
 int THIS_MODULE ;
 int __raw_writel (int ,scalar_t__) ;
 int amba_release_regions (struct amba_device*) ;
 int amba_request_regions (struct amba_device*,int *) ;
 int amba_set_drvdata (struct amba_device*,struct pl030_rtc*) ;
 int free_irq (int ,struct pl030_rtc*) ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 int kfree (struct pl030_rtc*) ;
 struct pl030_rtc* kmalloc (int,int ) ;
 int pl030_interrupt ;
 int pl030_ops ;
 int request_irq (int ,int ,int ,char*,struct pl030_rtc*) ;
 int resource_size (TYPE_1__*) ;
 int rtc_device_register (char*,int *,int *,int ) ;

__attribute__((used)) static int pl030_probe(struct amba_device *dev, struct amba_id *id)
{
 struct pl030_rtc *rtc;
 int ret;

 ret = amba_request_regions(dev, ((void*)0));
 if (ret)
  goto err_req;

 rtc = kmalloc(sizeof(*rtc), GFP_KERNEL);
 if (!rtc) {
  ret = -ENOMEM;
  goto err_rtc;
 }

 rtc->base = ioremap(dev->res.start, resource_size(&dev->res));
 if (!rtc->base) {
  ret = -ENOMEM;
  goto err_map;
 }

 __raw_writel(0, rtc->base + RTC_CR);
 __raw_writel(0, rtc->base + RTC_EOI);

 amba_set_drvdata(dev, rtc);

 ret = request_irq(dev->irq[0], pl030_interrupt, IRQF_DISABLED,
     "rtc-pl030", rtc);
 if (ret)
  goto err_irq;

 rtc->rtc = rtc_device_register("pl030", &dev->dev, &pl030_ops,
           THIS_MODULE);
 if (IS_ERR(rtc->rtc)) {
  ret = PTR_ERR(rtc->rtc);
  goto err_reg;
 }

 return 0;

 err_reg:
 free_irq(dev->irq[0], rtc);
 err_irq:
 iounmap(rtc->base);
 err_map:
 kfree(rtc);
 err_rtc:
 amba_release_regions(dev);
 err_req:
 return ret;
}
