
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {unsigned long cylinders; int heads; int sectors; int start; } ;
struct block_device {int dummy; } ;


 int xpram_pages ;

__attribute__((used)) static int xpram_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 unsigned long size;






 size = (xpram_pages * 8) & ~0x3f;
 geo->cylinders = size >> 6;
 geo->heads = 4;
 geo->sectors = 16;
 geo->start = 4;
 return 0;
}
