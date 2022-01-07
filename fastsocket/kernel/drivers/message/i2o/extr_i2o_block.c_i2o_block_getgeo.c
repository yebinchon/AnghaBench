
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {int sectors; int heads; int cylinders; } ;
struct block_device {int bd_disk; } ;


 int get_capacity (int ) ;
 int i2o_block_biosparam (int ,int *,int *,int *) ;

__attribute__((used)) static int i2o_block_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 i2o_block_biosparam(get_capacity(bdev->bd_disk),
       &geo->cylinders, &geo->heads, &geo->sectors);
 return 0;
}
