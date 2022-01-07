
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod_opt_clk {struct clk* _clk; int clkdev_con_id; int clkdev_dev_id; } ;
struct omap_hwmod {int opt_clks_cnt; int name; struct omap_hwmod_opt_clk* opt_clks; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int WARN (scalar_t__,char*,int ,int ,int ) ;
 struct clk* clk_get_sys (int ,int ) ;

__attribute__((used)) static int _init_opt_clks(struct omap_hwmod *oh)
{
 struct omap_hwmod_opt_clk *oc;
 struct clk *c;
 int i;
 int ret = 0;

 for (i = oh->opt_clks_cnt, oc = oh->opt_clks; i > 0; i--, oc++) {
  c = clk_get_sys(oc->clkdev_dev_id, oc->clkdev_con_id);
  WARN(IS_ERR(c), "omap_hwmod: %s: cannot clk_get opt_clk "
       "%s.%s\n", oh->name, oc->clkdev_dev_id,
       oc->clkdev_con_id);
  if (IS_ERR(c))
   ret = -EINVAL;
  oc->_clk = c;
 }

 return ret;
}
