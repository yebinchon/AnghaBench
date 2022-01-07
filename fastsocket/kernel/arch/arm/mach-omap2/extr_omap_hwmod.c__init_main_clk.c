
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {struct clk* _clk; int clkdev_con_id; int clkdev_dev_id; int name; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int WARN (scalar_t__,char*,int ,int ,int ) ;
 struct clk* clk_get_sys (int ,int ) ;

__attribute__((used)) static int _init_main_clk(struct omap_hwmod *oh)
{
 struct clk *c;
 int ret = 0;

 if (!oh->clkdev_con_id)
  return 0;

 c = clk_get_sys(oh->clkdev_dev_id, oh->clkdev_con_id);
 WARN(IS_ERR(c), "omap_hwmod: %s: cannot clk_get main_clk %s.%s\n",
      oh->name, oh->clkdev_dev_id, oh->clkdev_con_id);
 if (IS_ERR(c))
  ret = -EINVAL;
 oh->_clk = c;

 return ret;
}
