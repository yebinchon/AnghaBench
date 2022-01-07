
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk {unsigned long rate; } ;
struct TYPE_4__ {int scfr1; } ;
struct TYPE_3__ {unsigned long rate; } ;


 TYPE_2__* clockctl ;
 TYPE_1__ sys_clk ;

__attribute__((used)) static void diu_clk_calc(struct clk *clk)
{
 int diudiv_x_2 = clockctl->scfr1 & 0xff;
 unsigned long rate;

 rate = sys_clk.rate;

 rate *= 2;
 rate /= diudiv_x_2;

 clk->rate = rate;
}
