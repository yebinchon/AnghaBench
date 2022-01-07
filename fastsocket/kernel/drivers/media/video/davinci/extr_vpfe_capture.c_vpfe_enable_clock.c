
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_device {TYPE_1__* pdev; struct vpfe_config* cfg; } ;
struct vpfe_config {int * slaveclk; int * vpssclk; } ;
struct TYPE_2__ {int driver; } ;


 int ENOENT ;
 scalar_t__ clk_enable (int *) ;
 void* clk_get (TYPE_1__*,char*) ;
 int clk_put (int *) ;
 int v4l2_err (int ,char*) ;
 int v4l2_info (int ,char*) ;

__attribute__((used)) static int vpfe_enable_clock(struct vpfe_device *vpfe_dev)
{
 struct vpfe_config *vpfe_cfg = vpfe_dev->cfg;
 int ret = -ENOENT;

 vpfe_cfg->vpssclk = clk_get(vpfe_dev->pdev, "vpss_master");
 if (((void*)0) == vpfe_cfg->vpssclk) {
  v4l2_err(vpfe_dev->pdev->driver, "No clock defined for"
    "vpss_master\n");
  return ret;
 }

 if (clk_enable(vpfe_cfg->vpssclk)) {
  v4l2_err(vpfe_dev->pdev->driver,
   "vpfe vpss master clock not enabled\n");
  goto out;
 }
 v4l2_info(vpfe_dev->pdev->driver,
   "vpfe vpss master clock enabled\n");

 vpfe_cfg->slaveclk = clk_get(vpfe_dev->pdev, "vpss_slave");
 if (((void*)0) == vpfe_cfg->slaveclk) {
  v4l2_err(vpfe_dev->pdev->driver,
   "No clock defined for vpss slave\n");
  goto out;
 }

 if (clk_enable(vpfe_cfg->slaveclk)) {
  v4l2_err(vpfe_dev->pdev->driver,
    "vpfe vpss slave clock not enabled\n");
  goto out;
 }
 v4l2_info(vpfe_dev->pdev->driver, "vpfe vpss slave clock enabled\n");
 return 0;
out:
 if (vpfe_cfg->vpssclk)
  clk_put(vpfe_cfg->vpssclk);
 if (vpfe_cfg->slaveclk)
  clk_put(vpfe_cfg->slaveclk);

 return -1;
}
