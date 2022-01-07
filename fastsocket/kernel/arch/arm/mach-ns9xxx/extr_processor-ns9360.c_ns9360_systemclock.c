
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CRYSTAL ;
 int FS ;
 int ND ;
 int REGGETIM (int ,int ,int ) ;
 int SYS_PLL ;
 int __raw_readl (int ) ;

unsigned long ns9360_systemclock(void)
{
 u32 pll = __raw_readl(SYS_PLL);
 return CRYSTAL * (REGGETIM(pll, SYS_PLL, ND) + 1)
  >> REGGETIM(pll, SYS_PLL, FS);
}
