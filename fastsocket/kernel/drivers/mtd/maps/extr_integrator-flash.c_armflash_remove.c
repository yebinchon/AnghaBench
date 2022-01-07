
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct flash_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct flash_platform_data {int (* exit ) () ;} ;
struct armflash_info {scalar_t__ mtd; int nr_subdev; TYPE_2__* subdev; struct armflash_info* parts; } ;
struct TYPE_4__ {scalar_t__ mtd; } ;


 int armflash_subdev_remove (TYPE_2__*) ;
 int del_mtd_partitions (scalar_t__) ;
 int kfree (struct armflash_info*) ;
 int mtd_concat_destroy (scalar_t__) ;
 struct armflash_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int stub1 () ;

__attribute__((used)) static int armflash_remove(struct platform_device *dev)
{
 struct armflash_info *info = platform_get_drvdata(dev);
 struct flash_platform_data *plat = dev->dev.platform_data;
 int i;

 platform_set_drvdata(dev, ((void*)0));

 if (info) {
  if (info->mtd) {
   del_mtd_partitions(info->mtd);




  }
  kfree(info->parts);

  for (i = info->nr_subdev - 1; i >= 0; i--)
   armflash_subdev_remove(&info->subdev[i]);

  if (plat && plat->exit)
   plat->exit();

  kfree(info);
 }

 return 0;
}
