
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int device_for_each_child (int *,unsigned int*,int ) ;
 int i2cdev_check ;

__attribute__((used)) static int i2cdev_check_addr(struct i2c_adapter *adapter, unsigned int addr)
{
 return device_for_each_child(&adapter->dev, &addr, i2cdev_check);
}
