
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pd_unit {int capacity; int heads; int sectors; int cylinders; scalar_t__ alt_geom; } ;
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct pd_unit* private_data; } ;


 int PD_LOG_HEADS ;
 int PD_LOG_SECTS ;

__attribute__((used)) static int pd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct pd_unit *disk = bdev->bd_disk->private_data;

 if (disk->alt_geom) {
  geo->heads = PD_LOG_HEADS;
  geo->sectors = PD_LOG_SECTS;
  geo->cylinders = disk->capacity / (geo->heads * geo->sectors);
 } else {
  geo->heads = disk->heads;
  geo->sectors = disk->sectors;
  geo->cylinders = disk->cylinders;
 }

 return 0;
}
