
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbtx4939_flash_info {scalar_t__ mtd; int parts; scalar_t__ nr_parts; } ;
struct rbtx4939_flash_data {scalar_t__ nr_parts; } ;
struct TYPE_2__ {struct rbtx4939_flash_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int del_mtd_device (scalar_t__) ;
 int del_mtd_partitions (scalar_t__) ;
 int kfree (int ) ;
 int map_destroy (scalar_t__) ;
 struct rbtx4939_flash_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int rbtx4939_flash_remove(struct platform_device *dev)
{
 struct rbtx4939_flash_info *info;

 info = platform_get_drvdata(dev);
 if (!info)
  return 0;
 platform_set_drvdata(dev, ((void*)0));

 if (info->mtd) {
  del_mtd_device(info->mtd);

  map_destroy(info->mtd);
 }
 return 0;
}
