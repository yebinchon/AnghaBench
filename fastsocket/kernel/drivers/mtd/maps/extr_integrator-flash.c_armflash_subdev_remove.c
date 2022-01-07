
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int phys; scalar_t__ virt; } ;
struct armflash_subdev_info {TYPE_1__ map; int * name; scalar_t__ mtd; } ;


 int iounmap (scalar_t__) ;
 int kfree (int *) ;
 int map_destroy (scalar_t__) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void armflash_subdev_remove(struct armflash_subdev_info *subdev)
{
 if (subdev->mtd)
  map_destroy(subdev->mtd);
 if (subdev->map.virt)
  iounmap(subdev->map.virt);
 kfree(subdev->name);
 subdev->name = ((void*)0);
 release_mem_region(subdev->map.phys, subdev->map.size);
}
