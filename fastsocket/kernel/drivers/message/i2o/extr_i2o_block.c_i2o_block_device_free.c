
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2o_block_device {TYPE_1__* gd; } ;
struct TYPE_2__ {int queue; } ;


 int blk_cleanup_queue (int ) ;
 int kfree (struct i2o_block_device*) ;
 int put_disk (TYPE_1__*) ;

__attribute__((used)) static void i2o_block_device_free(struct i2o_block_device *dev)
{
 blk_cleanup_queue(dev->gd->queue);

 put_disk(dev->gd);

 kfree(dev);
}
