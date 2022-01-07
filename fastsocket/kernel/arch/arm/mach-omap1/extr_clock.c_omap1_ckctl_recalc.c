
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int rate_offset; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int ARM_CKCTL ;
 int omap_readw (int ) ;

__attribute__((used)) static unsigned long omap1_ckctl_recalc(struct clk *clk)
{

 int dsor = 1 << (3 & (omap_readw(ARM_CKCTL) >> clk->rate_offset));

 return clk->parent->rate / dsor;
}
