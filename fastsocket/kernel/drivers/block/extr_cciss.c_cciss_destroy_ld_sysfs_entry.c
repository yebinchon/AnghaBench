
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ctlr_info {TYPE_1__** drv; } ;
struct TYPE_2__ {struct device dev; } ;


 int device_del (struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static void cciss_destroy_ld_sysfs_entry(struct ctlr_info *h, int drv_index,
 int ctlr_exiting)
{
 struct device *dev = &h->drv[drv_index]->dev;


 if (drv_index == 0 && !ctlr_exiting)
  return;

 device_del(dev);
 put_device(dev);
 h->drv[drv_index] = ((void*)0);
}
