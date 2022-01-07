
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {int flags; int clksel_mask; int rate; TYPE_1__* parent; int name; int clksel_reg; int clksel; } ;
struct TYPE_2__ {int name; } ;


 int CONFIG_PARTICIPANT ;
 int EINVAL ;
 int __ffs (int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int _omap2_clksel_get_src_field (struct clk*,struct clk*,int*) ;
 int _omap2xxx_clk_commit (struct clk*) ;
 int clk_reparent (struct clk*,struct clk*) ;
 int pr_debug (char*,int ,int ,int) ;

int omap2_clk_set_parent(struct clk *clk, struct clk *new_parent)
{
 u32 field_val, v, parent_div;

 if (clk->flags & CONFIG_PARTICIPANT)
  return -EINVAL;

 if (!clk->clksel)
  return -EINVAL;

 parent_div = _omap2_clksel_get_src_field(new_parent, clk, &field_val);
 if (!parent_div)
  return -EINVAL;


 v = __raw_readl(clk->clksel_reg);
 v &= ~clk->clksel_mask;
 v |= field_val << __ffs(clk->clksel_mask);
 __raw_writel(v, clk->clksel_reg);
 v = __raw_readl(clk->clksel_reg);

 _omap2xxx_clk_commit(clk);

 clk_reparent(clk, new_parent);


 clk->rate = new_parent->rate;

 if (parent_div > 0)
  clk->rate /= parent_div;

 pr_debug("clock: set parent of %s to %s (new rate %ld)\n",
   clk->name, clk->parent->name, clk->rate);

 return 0;
}
