
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 scalar_t__ CCM_BASE ;
 scalar_t__ CCM_PPCTL ;
 int __raw_readl (scalar_t__) ;
 unsigned long mxc_decode_pll (int ,int) ;

__attribute__((used)) static unsigned long get_rate_ppll(void)
{
 ulong ppctl = __raw_readl(CCM_BASE + CCM_PPCTL);

 return mxc_decode_pll(ppctl, 24000000);
}
