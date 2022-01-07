
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {unsigned int addr; } ;
struct device {scalar_t__ driver; } ;


 int EBUSY ;
 struct i2c_client* i2c_verify_client (struct device*) ;

__attribute__((used)) static int i2cdev_check(struct device *dev, void *addrp)
{
 struct i2c_client *client = i2c_verify_client(dev);

 if (!client || client->addr != *(unsigned int *)addrp)
  return 0;

 return dev->driver ? -EBUSY : 0;
}
