
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {int saved_div; int bypass_shift; scalar_t__ bypass_reg; } ;
struct TYPE_2__ {scalar_t__ rate; } ;


 int BM_CLKCTRL_CPU_DIV_CPU ;
 int BM_CLKCTRL_HBUS_DIV ;
 int BM_CLKCTRL_HBUS_DIV_FRAC_EN ;
 int EINVAL ;
 scalar_t__ HW_CLKCTRL_CPU ;
 scalar_t__ HW_CLKCTRL_HBUS ;
 scalar_t__ REGS_CLKCTRL_BASE ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 struct clk cpu_clk ;
 TYPE_1__ hclk ;
 scalar_t__ machine_is_stmp378x () ;
 struct clk osc_24M ;

__attribute__((used)) static int clkseq_set_parent(struct clk *clk, struct clk *parent)
{
 int ret = -EINVAL;
 int shift = 8;


 if (parent == &osc_24M)
  shift = 4;

 if (clk->bypass_reg) {
  __raw_writel(1 << clk->bypass_shift, clk->bypass_reg + shift);

  ret = 0;
 }

 return ret;
}
