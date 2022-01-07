
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int REGSET (int,int ,int ,int ) ;
 int SWC ;
 int SYS_PLL ;
 int YES ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

void ns9360_reset(char mode)
{
 u32 reg;

 reg = __raw_readl(SYS_PLL) >> 16;
 REGSET(reg, SYS_PLL, SWC, YES);
 __raw_writel(reg, SYS_PLL);
}
