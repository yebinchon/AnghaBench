
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct clk {int rate_offset; int rate; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int DSP_CKCTL ;
 int EINVAL ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;
 int calc_dsor_exp (struct clk*,unsigned long) ;

__attribute__((used)) static int omap1_clk_set_rate_dsp_domain(struct clk *clk, unsigned long rate)
{
 int dsor_exp;
 u16 regval;

 dsor_exp = calc_dsor_exp(clk, rate);
 if (dsor_exp > 3)
  dsor_exp = -EINVAL;
 if (dsor_exp < 0)
  return dsor_exp;

 regval = __raw_readw(DSP_CKCTL);
 regval &= ~(3 << clk->rate_offset);
 regval |= dsor_exp << clk->rate_offset;
 __raw_writew(regval, DSP_CKCTL);
 clk->rate = clk->parent->rate / (1 << dsor_exp);

 return 0;
}
