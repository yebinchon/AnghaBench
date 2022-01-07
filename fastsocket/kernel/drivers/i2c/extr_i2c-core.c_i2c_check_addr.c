
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int __i2c_check_addr ;
 int device_for_each_child (int *,int*,int ) ;

__attribute__((used)) static int i2c_check_addr(struct i2c_adapter *adapter, int addr)
{
 return device_for_each_child(&adapter->dev, &addr, __i2c_check_addr);
}
