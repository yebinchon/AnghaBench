
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_rtc {scalar_t__ mmio_base; } ;
struct device {struct ep93xx_rtc* platform_data; } ;


 scalar_t__ EP93XX_RTC_LOAD ;
 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int ep93xx_rtc_set_mmss(struct device *dev, unsigned long secs)
{
 struct ep93xx_rtc *ep93xx_rtc = dev->platform_data;

 __raw_writel(secs + 1, ep93xx_rtc->mmio_base + EP93XX_RTC_LOAD);
 return 0;
}
