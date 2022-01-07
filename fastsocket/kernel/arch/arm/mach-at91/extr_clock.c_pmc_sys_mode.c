
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int pmc_mask; } ;


 int AT91_PMC_SCDR ;
 int AT91_PMC_SCER ;
 int at91_sys_write (int ,int ) ;

__attribute__((used)) static void pmc_sys_mode(struct clk *clk, int is_on)
{
 if (is_on)
  at91_sys_write(AT91_PMC_SCER, clk->pmc_mask);
 else
  at91_sys_write(AT91_PMC_SCDR, clk->pmc_mask);
}
