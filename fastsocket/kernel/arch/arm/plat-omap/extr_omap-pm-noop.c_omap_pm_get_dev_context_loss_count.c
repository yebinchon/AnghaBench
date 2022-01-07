
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 int dev_name (struct device*) ;
 int pr_debug (char*,int ) ;

int omap_pm_get_dev_context_loss_count(struct device *dev)
{
 if (!dev) {
  WARN_ON(1);
  return -EINVAL;
 };

 pr_debug("OMAP PM: returning context loss count for dev %s\n",
   dev_name(dev));






 return 0;
}
