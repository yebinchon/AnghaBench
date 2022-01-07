
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_device {TYPE_1__* pdev; struct vpfe_config* cfg; } ;
struct vpfe_config {int slaveclk; int vpssclk; } ;
struct TYPE_2__ {int driver; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int v4l2_info (int ,char*) ;

__attribute__((used)) static void vpfe_disable_clock(struct vpfe_device *vpfe_dev)
{
 struct vpfe_config *vpfe_cfg = vpfe_dev->cfg;

 clk_disable(vpfe_cfg->vpssclk);
 clk_put(vpfe_cfg->vpssclk);
 clk_disable(vpfe_cfg->slaveclk);
 clk_put(vpfe_cfg->slaveclk);
 v4l2_info(vpfe_dev->pdev->driver,
   "vpfe vpss master & slave clocks disabled\n");
}
