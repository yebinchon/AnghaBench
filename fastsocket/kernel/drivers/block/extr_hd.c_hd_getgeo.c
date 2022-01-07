
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_i_struct {int cyl; int sect; int head; } ;
struct hd_geometry {int cylinders; int sectors; int heads; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct hd_i_struct* private_data; } ;



__attribute__((used)) static int hd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct hd_i_struct *disk = bdev->bd_disk->private_data;

 geo->heads = disk->head;
 geo->sectors = disk->sect;
 geo->cylinders = disk->cyl;
 return 0;
}
