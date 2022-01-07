
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_rtc {int dummy; } ;


 int RTSR ;
 int RTSR_TRIG_MASK ;
 int rtc_readl (struct pxa_rtc*,int ) ;
 int rtc_writel (struct pxa_rtc*,int ,int ) ;

__attribute__((used)) static void rtsr_set_bits(struct pxa_rtc *pxa_rtc, u32 mask)
{
 u32 rtsr;

 rtsr = rtc_readl(pxa_rtc, RTSR);
 rtsr &= ~RTSR_TRIG_MASK;
 rtsr |= mask;
 rtc_writel(pxa_rtc, RTSR, rtsr);
}
