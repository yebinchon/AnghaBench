
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct clk {int rate_offset; int rate; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int ARM_CKCTL ;
 int EINVAL ;
 int calc_dsor_exp (struct clk*,unsigned long) ;
 int omap_readw (int ) ;
 int omap_writew (int,int ) ;
 int verify_ckctl_value (int) ;

__attribute__((used)) static int omap1_clk_set_rate_ckctl_arm(struct clk *clk, unsigned long rate)
{
 int dsor_exp;
 u16 regval;

 dsor_exp = calc_dsor_exp(clk, rate);
 if (dsor_exp > 3)
  dsor_exp = -EINVAL;
 if (dsor_exp < 0)
  return dsor_exp;

 regval = omap_readw(ARM_CKCTL);
 regval &= ~(3 << clk->rate_offset);
 regval |= dsor_exp << clk->rate_offset;
 regval = verify_ckctl_value(regval);
 omap_writew(regval, ARM_CKCTL);
 clk->rate = clk->parent->rate / (1 << dsor_exp);
 return 0;
}
