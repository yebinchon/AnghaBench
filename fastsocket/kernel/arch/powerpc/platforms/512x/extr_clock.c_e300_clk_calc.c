
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk {int rate; TYPE_1__* parent; } ;
struct TYPE_4__ {int spmr; } ;
struct TYPE_3__ {int rate; } ;


 TYPE_2__* clockctl ;

__attribute__((used)) static void e300_clk_calc(struct clk *clk)
{
 int spmf = (clockctl->spmr >> 16) & 0xf;
 int ratex2 = clk->parent->rate * spmf;

 clk->rate = ratex2 / 2;
}
