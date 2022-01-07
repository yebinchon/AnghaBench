
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct flash_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {scalar_t__ virt; } ;
struct ixp4xx_flash_info {scalar_t__ res; scalar_t__ partitions; TYPE_1__ map; scalar_t__ mtd; } ;
struct flash_platform_data {int (* exit ) () ;} ;


 int del_mtd_partitions (scalar_t__) ;
 int iounmap (scalar_t__) ;
 int kfree (scalar_t__) ;
 int map_destroy (scalar_t__) ;
 struct ixp4xx_flash_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_resource (scalar_t__) ;
 int stub1 () ;

__attribute__((used)) static int ixp4xx_flash_remove(struct platform_device *dev)
{
 struct flash_platform_data *plat = dev->dev.platform_data;
 struct ixp4xx_flash_info *info = platform_get_drvdata(dev);

 platform_set_drvdata(dev, ((void*)0));

 if(!info)
  return 0;

 if (info->mtd) {
  del_mtd_partitions(info->mtd);
  map_destroy(info->mtd);
 }
 if (info->map.virt)
  iounmap(info->map.virt);

 kfree(info->partitions);

 if (info->res) {
  release_resource(info->res);
  kfree(info->res);
 }

 if (plat->exit)
  plat->exit();

 return 0;
}
