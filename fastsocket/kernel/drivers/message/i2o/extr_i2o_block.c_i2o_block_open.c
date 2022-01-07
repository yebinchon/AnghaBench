
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2o_block_device {int power; int i2o_dev; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct i2o_block_device* private_data; } ;


 int ENODEV ;
 int i2o_block_device_lock (int ,int) ;
 int i2o_block_device_mount (int ,int) ;
 int i2o_block_device_power (struct i2o_block_device*,int) ;
 int osm_debug (char*) ;

__attribute__((used)) static int i2o_block_open(struct block_device *bdev, fmode_t mode)
{
 struct i2o_block_device *dev = bdev->bd_disk->private_data;

 if (!dev->i2o_dev)
  return -ENODEV;

 if (dev->power > 0x1f)
  i2o_block_device_power(dev, 0x02);

 i2o_block_device_mount(dev->i2o_dev, -1);

 i2o_block_device_lock(dev->i2o_dev, -1);

 osm_debug("Ready.\n");

 return 0;
}
