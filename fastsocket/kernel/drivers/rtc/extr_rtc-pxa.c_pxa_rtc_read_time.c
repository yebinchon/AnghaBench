
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int dummy; } ;
struct pxa_rtc {int dummy; } ;
struct device {int dummy; } ;


 int RDCR ;
 int RYCR ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int rtc_readl (struct pxa_rtc*,int ) ;
 int tm_calc (int ,int ,struct rtc_time*) ;

__attribute__((used)) static int pxa_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);
 u32 rycr, rdcr;

 rycr = rtc_readl(pxa_rtc, RYCR);
 rdcr = rtc_readl(pxa_rtc, RDCR);

 tm_calc(rycr, rdcr, tm);
 return 0;
}
