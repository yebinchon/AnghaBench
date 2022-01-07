
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sys_device {int kobj; int * cls; int id; } ;
struct dma_info {TYPE_1__* pdev; } ;
struct dma_channel {int chan; int vchan; struct sys_device dev; } ;
typedef int name ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int attr_config ;
 int attr_count ;
 int attr_dev_id ;
 int attr_flags ;
 int attr_mode ;
 int dev_err (TYPE_2__*,char*) ;
 int dma_sysclass ;
 int snprintf (char*,int,char*,int) ;
 int sysdev_create_file (struct sys_device*,int *) ;
 int sysdev_register (struct sys_device*) ;
 int sysfs_create_link (int *,int *,char*) ;
 scalar_t__ unlikely (int) ;

int dma_create_sysfs_files(struct dma_channel *chan, struct dma_info *info)
{
 struct sys_device *dev = &chan->dev;
 char name[16];
 int ret;

 dev->id = chan->vchan;
 dev->cls = &dma_sysclass;

 ret = sysdev_register(dev);
 if (ret)
  return ret;

 ret |= sysdev_create_file(dev, &attr_dev_id);
 ret |= sysdev_create_file(dev, &attr_count);
 ret |= sysdev_create_file(dev, &attr_mode);
 ret |= sysdev_create_file(dev, &attr_flags);
 ret |= sysdev_create_file(dev, &attr_config);

 if (unlikely(ret)) {
  dev_err(&info->pdev->dev, "Failed creating attrs\n");
  return ret;
 }

 snprintf(name, sizeof(name), "dma%d", chan->chan);
 return sysfs_create_link(&info->pdev->dev.kobj, &dev->kobj, name);
}
