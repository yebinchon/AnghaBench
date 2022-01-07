
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_part; } ;
struct TYPE_2__ {int policy; } ;



int bdev_read_only(struct block_device *bdev)
{
 if (!bdev)
  return 0;
 return bdev->bd_part->policy;
}
