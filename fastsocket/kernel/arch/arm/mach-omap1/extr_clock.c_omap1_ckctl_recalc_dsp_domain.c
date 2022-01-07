
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk {int rate_offset; TYPE_1__* parent; } ;
struct TYPE_4__ {int clk; } ;
struct TYPE_3__ {int rate; } ;


 int DSP_CKCTL ;
 int __raw_readw (int ) ;
 TYPE_2__ api_ck ;
 int omap1_clk_disable (int *) ;
 int omap1_clk_enable (int *) ;

__attribute__((used)) static unsigned long omap1_ckctl_recalc_dsp_domain(struct clk *clk)
{
 int dsor;
 omap1_clk_enable(&api_ck.clk);
 dsor = 1 << (3 & (__raw_readw(DSP_CKCTL) >> clk->rate_offset));
 omap1_clk_disable(&api_ck.clk);

 return clk->parent->rate / dsor;
}
