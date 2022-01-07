
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_irda {int * cur_clk; } ;


 int clk_disable (int *) ;

__attribute__((used)) static inline void pxa_irda_disable_clk(struct pxa_irda *si)
{
 if (si->cur_clk)
  clk_disable(si->cur_clk);
 si->cur_clk = ((void*)0);
}
