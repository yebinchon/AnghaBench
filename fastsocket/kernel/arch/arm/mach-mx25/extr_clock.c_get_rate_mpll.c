
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 scalar_t__ CCM_MPCTL ;
 scalar_t__ CRM_BASE ;
 int __raw_readl (scalar_t__) ;
 unsigned long mxc_decode_pll (int ,int) ;

__attribute__((used)) static unsigned long get_rate_mpll(void)
{
 ulong mpctl = __raw_readl(CRM_BASE + CCM_MPCTL);

 return mxc_decode_pll(mpctl, 24000000);
}
