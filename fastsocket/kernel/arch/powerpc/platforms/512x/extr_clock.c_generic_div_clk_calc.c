
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk {int div_shift; int rate; TYPE_1__* parent; } ;
struct TYPE_4__ {int scfr1; } ;
struct TYPE_3__ {int rate; } ;


 TYPE_2__* clockctl ;

__attribute__((used)) static void generic_div_clk_calc(struct clk *clk)
{
 int div = (clockctl->scfr1 >> clk->div_shift) & 0x7;

 clk->rate = clk->parent->rate / div;
}
