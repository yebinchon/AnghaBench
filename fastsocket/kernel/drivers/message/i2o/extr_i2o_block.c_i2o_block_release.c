
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2o_block_device {int flags; int i2o_dev; } ;
struct gendisk {struct i2o_block_device* private_data; } ;
typedef int fmode_t ;


 int i2o_block_device_flush (int ) ;
 int i2o_block_device_power (struct i2o_block_device*,int) ;
 int i2o_block_device_unlock (int ,int) ;

__attribute__((used)) static int i2o_block_release(struct gendisk *disk, fmode_t mode)
{
 struct i2o_block_device *dev = disk->private_data;
 u8 operation;
 if (!dev->i2o_dev)
  return 0;

 i2o_block_device_flush(dev->i2o_dev);

 i2o_block_device_unlock(dev->i2o_dev, -1);

 if (dev->flags & (1 << 3 | 1 << 4))
  operation = 0x21;
 else
  operation = 0x24;

 i2o_block_device_power(dev, operation);

 return 0;
}
