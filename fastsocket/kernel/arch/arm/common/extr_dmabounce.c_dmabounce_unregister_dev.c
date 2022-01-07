
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pool; } ;
struct TYPE_4__ {scalar_t__ pool; } ;
struct dmabounce_device_info {scalar_t__ attr_res; TYPE_2__ large; TYPE_1__ small; int safe_buffers; } ;
struct TYPE_6__ {struct dmabounce_device_info* dmabounce; } ;
struct device {TYPE_3__ archdata; } ;


 int BUG () ;
 int dev_attr_dmabounce_stats ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int device_remove_file (struct device*,int *) ;
 int dma_pool_destroy (scalar_t__) ;
 int kfree (struct dmabounce_device_info*) ;
 int list_empty (int *) ;

void dmabounce_unregister_dev(struct device *dev)
{
 struct dmabounce_device_info *device_info = dev->archdata.dmabounce;

 dev->archdata.dmabounce = ((void*)0);

 if (!device_info) {
  dev_warn(dev,
    "Never registered with dmabounce but attempting"
    "to unregister!\n");
  return;
 }

 if (!list_empty(&device_info->safe_buffers)) {
  dev_err(dev,
   "Removing from dmabounce with pending buffers!\n");
  BUG();
 }

 if (device_info->small.pool)
  dma_pool_destroy(device_info->small.pool);
 if (device_info->large.pool)
  dma_pool_destroy(device_info->large.pool);






 kfree(device_info);

 dev_info(dev, "dmabounce: device unregistered\n");
}
