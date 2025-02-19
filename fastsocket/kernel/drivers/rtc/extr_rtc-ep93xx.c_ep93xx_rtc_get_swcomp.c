
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_rtc {scalar_t__ mmio_base; } ;
struct device {struct ep93xx_rtc* platform_data; } ;


 scalar_t__ EP93XX_RTC_SWCOMP ;
 unsigned long EP93XX_RTC_SWCOMP_DEL_MASK ;
 unsigned long EP93XX_RTC_SWCOMP_DEL_SHIFT ;
 unsigned long EP93XX_RTC_SWCOMP_INT_MASK ;
 unsigned long EP93XX_RTC_SWCOMP_INT_SHIFT ;
 unsigned long __raw_readl (scalar_t__) ;

__attribute__((used)) static int ep93xx_rtc_get_swcomp(struct device *dev, unsigned short *preload,
    unsigned short *delete)
{
 struct ep93xx_rtc *ep93xx_rtc = dev->platform_data;
 unsigned long comp;

 comp = __raw_readl(ep93xx_rtc->mmio_base + EP93XX_RTC_SWCOMP);

 if (preload)
  *preload = (comp & EP93XX_RTC_SWCOMP_INT_MASK)
    >> EP93XX_RTC_SWCOMP_INT_SHIFT;

 if (delete)
  *delete = (comp & EP93XX_RTC_SWCOMP_DEL_MASK)
    >> EP93XX_RTC_SWCOMP_DEL_SHIFT;

 return 0;
}
