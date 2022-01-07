
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int * parent; int * bus; int * type; } ;
struct ctlr_info {TYPE_1__** drv; int dev; int ctlr; } ;
struct TYPE_2__ {int device_initialized; struct device dev; } ;


 int cciss_bus_type ;
 int cciss_dev_type ;
 int dev_set_name (struct device*,char*,int ,int) ;
 long device_add (struct device*) ;
 int device_initialize (struct device*) ;

__attribute__((used)) static long cciss_create_ld_sysfs_entry(struct ctlr_info *h,
           int drv_index)
{
 struct device *dev;

 if (h->drv[drv_index]->device_initialized)
  return 0;

 dev = &h->drv[drv_index]->dev;
 device_initialize(dev);
 dev->type = &cciss_dev_type;
 dev->bus = &cciss_bus_type;
 dev_set_name(dev, "c%dd%d", h->ctlr, drv_index);
 dev->parent = &h->dev;
 h->drv[drv_index]->device_initialized = 1;
 return device_add(dev);
}
