
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_part; } ;
struct TYPE_2__ {int policy; } ;



void set_device_ro(struct block_device *bdev, int flag)
{
 bdev->bd_part->policy = flag;
}
