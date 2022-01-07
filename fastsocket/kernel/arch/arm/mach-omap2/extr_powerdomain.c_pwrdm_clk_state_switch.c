
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int * clkdm; } ;


 int EINVAL ;
 int pwrdm_clkdm_state_switch (int *) ;

int pwrdm_clk_state_switch(struct clk *clk)
{
 if (clk != ((void*)0) && clk->clkdm != ((void*)0))
  return pwrdm_clkdm_state_switch(clk->clkdm);
 return -EINVAL;
}
