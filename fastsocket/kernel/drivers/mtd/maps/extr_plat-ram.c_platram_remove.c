
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * virt; } ;
struct platram_info {TYPE_1__ map; struct platram_info* area; scalar_t__ mtd; struct platram_info* partitions; scalar_t__ free_partitions; } ;
struct platform_device {int dev; } ;


 int PLATRAM_RO ;
 int del_mtd_device (scalar_t__) ;
 int del_mtd_partitions (scalar_t__) ;
 int dev_dbg (int *,char*) ;
 int iounmap (int *) ;
 int kfree (struct platram_info*) ;
 int map_destroy (scalar_t__) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int platram_setrw (struct platram_info*,int ) ;
 int release_resource (struct platram_info*) ;
 struct platram_info* to_platram_info (struct platform_device*) ;

__attribute__((used)) static int platram_remove(struct platform_device *pdev)
{
 struct platram_info *info = to_platram_info(pdev);

 platform_set_drvdata(pdev, ((void*)0));

 dev_dbg(&pdev->dev, "removing device\n");

 if (info == ((void*)0))
  return 0;

 if (info->mtd) {







  del_mtd_device(info->mtd);
  map_destroy(info->mtd);
 }



 platram_setrw(info, PLATRAM_RO);



 if (info->area) {
  release_resource(info->area);
  kfree(info->area);
 }

 if (info->map.virt != ((void*)0))
  iounmap(info->map.virt);

 kfree(info);

 return 0;
}
