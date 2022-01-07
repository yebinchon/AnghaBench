
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int array_sectors; } ;
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct mddev* private_data; } ;



__attribute__((used)) static int md_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct mddev *mddev = bdev->bd_disk->private_data;

 geo->heads = 2;
 geo->sectors = 4;
 geo->cylinders = mddev->array_sectors / 8;
 return 0;
}
