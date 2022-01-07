
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl030_rtc {scalar_t__ base; int rtc; } ;
struct amba_device {int * irq; } ;


 scalar_t__ RTC_CR ;
 struct pl030_rtc* amba_get_drvdata (struct amba_device*) ;
 int amba_release_regions (struct amba_device*) ;
 int amba_set_drvdata (struct amba_device*,int *) ;
 int free_irq (int ,struct pl030_rtc*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct pl030_rtc*) ;
 int rtc_device_unregister (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pl030_remove(struct amba_device *dev)
{
 struct pl030_rtc *rtc = amba_get_drvdata(dev);

 amba_set_drvdata(dev, ((void*)0));

 writel(0, rtc->base + RTC_CR);

 free_irq(dev->irq[0], rtc);
 rtc_device_unregister(rtc->rtc);
 iounmap(rtc->base);
 kfree(rtc);
 amba_release_regions(dev);

 return 0;
}
