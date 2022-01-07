
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int CKSEL ;
 int CPUDIV ;
 int CPUSEL ;
 int PM_BFEXT (int ,unsigned long) ;
 unsigned long PM_BIT (int ) ;
 unsigned long bus_clk_get_rate (struct clk*,unsigned long) ;
 unsigned long pm_readl (int ) ;

__attribute__((used)) static unsigned long cpu_clk_get_rate(struct clk *clk)
{
 unsigned long cksel, shift = 0;

 cksel = pm_readl(CKSEL);
 if (cksel & PM_BIT(CPUDIV))
  shift = PM_BFEXT(CPUSEL, cksel) + 1;

 return bus_clk_get_rate(clk, shift);
}
