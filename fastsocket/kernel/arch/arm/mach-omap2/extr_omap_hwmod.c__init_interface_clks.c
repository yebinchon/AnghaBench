
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod_ocp_if {struct clk* _clk; int clkdev_con_id; int clkdev_dev_id; } ;
struct omap_hwmod {int slaves_cnt; int name; struct omap_hwmod_ocp_if** slaves; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int WARN (scalar_t__,char*,int ,int ,int ) ;
 struct clk* clk_get_sys (int ,int ) ;

__attribute__((used)) static int _init_interface_clks(struct omap_hwmod *oh)
{
 struct omap_hwmod_ocp_if *os;
 struct clk *c;
 int i;
 int ret = 0;

 if (oh->slaves_cnt == 0)
  return 0;

 for (i = 0, os = *oh->slaves; i < oh->slaves_cnt; i++, os++) {
  if (!os->clkdev_con_id)
   continue;

  c = clk_get_sys(os->clkdev_dev_id, os->clkdev_con_id);
  WARN(IS_ERR(c), "omap_hwmod: %s: cannot clk_get "
       "interface_clk %s.%s\n", oh->name,
       os->clkdev_dev_id, os->clkdev_con_id);
  if (IS_ERR(c))
   ret = -EINVAL;
  os->_clk = c;
 }

 return ret;
}
