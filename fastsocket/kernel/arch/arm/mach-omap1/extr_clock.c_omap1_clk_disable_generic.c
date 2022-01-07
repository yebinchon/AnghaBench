
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; int enable_bit; int * enable_reg; } ;
typedef int __u32 ;
typedef int __u16 ;


 int ENABLE_REG_32BIT ;
 int __raw_readl (int *) ;
 int __raw_readw (int *) ;
 int __raw_writel (int,int *) ;
 int __raw_writew (int,int *) ;

__attribute__((used)) static void omap1_clk_disable_generic(struct clk *clk)
{
 __u16 regval16;
 __u32 regval32;

 if (clk->enable_reg == ((void*)0))
  return;

 if (clk->flags & ENABLE_REG_32BIT) {
  regval32 = __raw_readl(clk->enable_reg);
  regval32 &= ~(1 << clk->enable_bit);
  __raw_writel(regval32, clk->enable_reg);
 } else {
  regval16 = __raw_readw(clk->enable_reg);
  regval16 &= ~(1 << clk->enable_bit);
  __raw_writew(regval16, clk->enable_reg);
 }
}
