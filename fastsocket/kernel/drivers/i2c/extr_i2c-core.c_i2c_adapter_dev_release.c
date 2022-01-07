
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev_released; } ;
struct device {int dummy; } ;


 int complete (int *) ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;

__attribute__((used)) static void i2c_adapter_dev_release(struct device *dev)
{
 struct i2c_adapter *adap = to_i2c_adapter(dev);
 complete(&adap->dev_released);
}
