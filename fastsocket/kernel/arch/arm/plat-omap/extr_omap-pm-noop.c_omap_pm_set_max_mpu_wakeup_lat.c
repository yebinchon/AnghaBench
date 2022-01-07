
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON (int) ;
 int dev_name (struct device*) ;
 int pr_debug (char*,int ,...) ;

void omap_pm_set_max_mpu_wakeup_lat(struct device *dev, long t)
{
 if (!dev || t < -1) {
  WARN_ON(1);
  return;
 };

 if (t == -1)
  pr_debug("OMAP PM: remove max MPU wakeup latency constraint: "
    "dev %s\n", dev_name(dev));
 else
  pr_debug("OMAP PM: add max MPU wakeup latency constraint: "
    "dev %s, t = %ld usec\n", dev_name(dev), t);
}
