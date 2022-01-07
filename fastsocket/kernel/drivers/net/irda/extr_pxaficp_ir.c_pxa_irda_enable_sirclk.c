
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_irda {int sir_clk; int cur_clk; } ;


 int clk_enable (int ) ;

__attribute__((used)) static inline void pxa_irda_enable_sirclk(struct pxa_irda *si)
{
 si->cur_clk = si->sir_clk;
 clk_enable(si->sir_clk);
}
