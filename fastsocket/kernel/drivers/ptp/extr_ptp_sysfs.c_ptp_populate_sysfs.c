
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {scalar_t__ n_ext_ts; scalar_t__ n_per_out; scalar_t__ pps; } ;
struct ptp_clock {struct ptp_clock_info* info; struct device* dev; } ;
struct device {int dummy; } ;


 int dev_attr_extts_enable ;
 int dev_attr_fifo ;
 int dev_attr_period ;
 int dev_attr_pps_enable ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

int ptp_populate_sysfs(struct ptp_clock *ptp)
{
 struct device *dev = ptp->dev;
 struct ptp_clock_info *info = ptp->info;
 int err;

 if (info->n_ext_ts) {
  err = device_create_file(dev, &dev_attr_extts_enable);
  if (err)
   goto out1;
  err = device_create_file(dev, &dev_attr_fifo);
  if (err)
   goto out2;
 }
 if (info->n_per_out) {
  err = device_create_file(dev, &dev_attr_period);
  if (err)
   goto out3;
 }
 if (info->pps) {
  err = device_create_file(dev, &dev_attr_pps_enable);
  if (err)
   goto out4;
 }
 return 0;
out4:
 if (info->n_per_out)
  device_remove_file(dev, &dev_attr_period);
out3:
 if (info->n_ext_ts)
  device_remove_file(dev, &dev_attr_fifo);
out2:
 if (info->n_ext_ts)
  device_remove_file(dev, &dev_attr_extts_enable);
out1:
 return err;
}
