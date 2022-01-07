
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct physmap_flash_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct physmap_flash_info {int ** mtd; int * cmtd; int parts; scalar_t__ nr_parts; } ;
struct physmap_flash_data {scalar_t__ nr_parts; } ;


 int MAX_RESOURCES ;
 int del_mtd_device (int *) ;
 int del_mtd_partitions (int *) ;
 int kfree (int ) ;
 int map_destroy (int *) ;
 int mtd_concat_destroy (int *) ;
 struct physmap_flash_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int physmap_flash_remove(struct platform_device *dev)
{
 struct physmap_flash_info *info;
 struct physmap_flash_data *physmap_data;
 int i;

 info = platform_get_drvdata(dev);
 if (info == ((void*)0))
  return 0;
 platform_set_drvdata(dev, ((void*)0));

 physmap_data = dev->dev.platform_data;

 if (info->cmtd) {






  del_mtd_device(info->cmtd);

 }
 for (i = 0; i < MAX_RESOURCES; i++) {
  if (info->mtd[i] != ((void*)0))
   map_destroy(info->mtd[i]);
 }
 return 0;
}
