
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 TYPE_1__ api_ck ;
 int omap1_clk_disable (int *) ;
 int omap1_clk_enable (int *) ;
 int omap1_clk_enable_generic (struct clk*) ;

__attribute__((used)) static int omap1_clk_enable_dsp_domain(struct clk *clk)
{
 int retval;

 retval = omap1_clk_enable(&api_ck.clk);
 if (!retval) {
  retval = omap1_clk_enable_generic(clk);
  omap1_clk_disable(&api_ck.clk);
 }

 return retval;
}
