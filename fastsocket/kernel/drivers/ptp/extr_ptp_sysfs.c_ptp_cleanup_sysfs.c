
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {scalar_t__ pps; scalar_t__ n_per_out; scalar_t__ n_ext_ts; } ;
struct ptp_clock {struct ptp_clock_info* info; struct device* dev; } ;
struct device {int dummy; } ;


 int dev_attr_extts_enable ;
 int dev_attr_fifo ;
 int dev_attr_period ;
 int dev_attr_pps_enable ;
 int device_remove_file (struct device*,int *) ;

int ptp_cleanup_sysfs(struct ptp_clock *ptp)
{
 struct device *dev = ptp->dev;
 struct ptp_clock_info *info = ptp->info;

 if (info->n_ext_ts) {
  device_remove_file(dev, &dev_attr_extts_enable);
  device_remove_file(dev, &dev_attr_fifo);
 }
 if (info->n_per_out)
  device_remove_file(dev, &dev_attr_period);

 if (info->pps)
  device_remove_file(dev, &dev_attr_pps_enable);

 return 0;
}
