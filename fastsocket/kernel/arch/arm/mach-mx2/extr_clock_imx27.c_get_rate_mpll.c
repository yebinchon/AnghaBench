
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_MPCTL0 ;
 int __raw_readl (int ) ;
 int clk_get_rate (int ) ;
 unsigned long mxc_decode_pll (int ,int ) ;

__attribute__((used)) static unsigned long get_rate_mpll(struct clk *clk)
{
 return mxc_decode_pll(__raw_readl(CCM_MPCTL0),
   clk_get_rate(clk->parent));
}
