
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_host {scalar_t__ sectors; scalar_t__ heads; scalar_t__ cyls; } ;
struct hd_geometry {unsigned short cylinders; unsigned char heads; unsigned char sectors; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct mg_host* private_data; } ;



__attribute__((used)) static int mg_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct mg_host *host = bdev->bd_disk->private_data;

 geo->cylinders = (unsigned short)host->cyls;
 geo->heads = (unsigned char)host->heads;
 geo->sectors = (unsigned char)host->sectors;
 return 0;
}
