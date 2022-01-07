
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hd_geometry {scalar_t__ cylinders; int sectors; int heads; } ;
struct block_device {int bd_disk; } ;
struct TYPE_3__ {scalar_t__ cylinders; int sectors; int heads; } ;
typedef TYPE_1__ drive_info_struct ;


 int ENXIO ;
 TYPE_1__* get_drv (int ) ;

__attribute__((used)) static int cciss_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 drive_info_struct *drv = get_drv(bdev->bd_disk);

 if (!drv->cylinders)
  return -ENXIO;

 geo->heads = drv->heads;
 geo->sectors = drv->sectors;
 geo->cylinders = drv->cylinders;
 return 0;
}
