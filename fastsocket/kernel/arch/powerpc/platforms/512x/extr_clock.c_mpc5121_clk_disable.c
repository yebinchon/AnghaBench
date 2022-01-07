
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int flags; size_t reg; int bit; } ;
struct TYPE_2__ {int * sccr; } ;


 int CLK_HAS_CTRL ;
 TYPE_1__* clockctl ;
 unsigned int in_be32 (int *) ;
 int out_be32 (int *,unsigned int) ;

__attribute__((used)) static void mpc5121_clk_disable(struct clk *clk)
{
 unsigned int mask;

 if (clk->flags & CLK_HAS_CTRL) {
  mask = in_be32(&clockctl->sccr[clk->reg]);
  mask &= ~(1 << clk->bit);
  out_be32(&clockctl->sccr[clk->reg], mask);
 }
}
