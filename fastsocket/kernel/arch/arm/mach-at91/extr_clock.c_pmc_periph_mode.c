
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int pmc_mask; } ;


 int AT91_PMC_PCDR ;
 int AT91_PMC_PCER ;
 int at91_sys_write (int ,int ) ;

__attribute__((used)) static void pmc_periph_mode(struct clk *clk, int is_on)
{
 if (is_on)
  at91_sys_write(AT91_PMC_PCER, clk->pmc_mask);
 else
  at91_sys_write(AT91_PMC_PCDR, clk->pmc_mask);
}
