
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct of_flash {scalar_t__ cmtd; int list_size; TYPE_2__* list; } ;
struct of_device {int dev; } ;
struct TYPE_3__ {scalar_t__ virt; } ;
struct TYPE_4__ {scalar_t__ mtd; struct of_flash* res; TYPE_1__ map; } ;


 struct of_flash* OF_FLASH_PARTS (struct of_flash*) ;
 int del_mtd_device (scalar_t__) ;
 int del_mtd_partitions (scalar_t__) ;
 struct of_flash* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int iounmap (scalar_t__) ;
 int kfree (struct of_flash*) ;
 int map_destroy (scalar_t__) ;
 int mtd_concat_destroy (scalar_t__) ;
 int release_resource (struct of_flash*) ;

__attribute__((used)) static int of_flash_remove(struct of_device *dev)
{
 struct of_flash *info;
 int i;

 info = dev_get_drvdata(&dev->dev);
 if (!info)
  return 0;
 dev_set_drvdata(&dev->dev, ((void*)0));
 if (info->cmtd) {
  if (OF_FLASH_PARTS(info)) {
   del_mtd_partitions(info->cmtd);
   kfree(OF_FLASH_PARTS(info));
  } else {
   del_mtd_device(info->cmtd);
  }
 }

 for (i = 0; i < info->list_size; i++) {
  if (info->list[i].mtd)
   map_destroy(info->list[i].mtd);

  if (info->list[i].map.virt)
   iounmap(info->list[i].map.virt);

  if (info->list[i].res) {
   release_resource(info->list[i].res);
   kfree(info->list[i].res);
  }
 }

 kfree(info);

 return 0;
}
