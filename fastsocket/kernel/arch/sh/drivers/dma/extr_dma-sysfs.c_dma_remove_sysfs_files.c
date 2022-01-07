
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sys_device {int dummy; } ;
struct dma_info {TYPE_2__* pdev; } ;
struct dma_channel {int chan; struct sys_device dev; } ;
typedef int name ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int attr_config ;
 int attr_count ;
 int attr_dev_id ;
 int attr_flags ;
 int attr_mode ;
 int snprintf (char*,int,char*,int) ;
 int sysdev_remove_file (struct sys_device*,int *) ;
 int sysdev_unregister (struct sys_device*) ;
 int sysfs_remove_link (int *,char*) ;

void dma_remove_sysfs_files(struct dma_channel *chan, struct dma_info *info)
{
 struct sys_device *dev = &chan->dev;
 char name[16];

 sysdev_remove_file(dev, &attr_dev_id);
 sysdev_remove_file(dev, &attr_count);
 sysdev_remove_file(dev, &attr_mode);
 sysdev_remove_file(dev, &attr_flags);
 sysdev_remove_file(dev, &attr_config);

 snprintf(name, sizeof(name), "dma%d", chan->chan);
 sysfs_remove_link(&info->pdev->dev.kobj, name);

 sysdev_unregister(dev);
}
