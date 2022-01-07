
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pxa_rtc {int dummy; } ;
struct device {int dummy; } ;


 int RDCR ;
 int RYCR ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int rdxr_calc (struct rtc_time*) ;
 int rtc_writel (struct pxa_rtc*,int ,int ) ;
 int ryxr_calc (struct rtc_time*) ;

__attribute__((used)) static int pxa_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);

 rtc_writel(pxa_rtc, RYCR, ryxr_calc(tm));
 rtc_writel(pxa_rtc, RDCR, rdxr_calc(tm));

 return 0;
}
