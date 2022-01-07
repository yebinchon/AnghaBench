
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; } ;
struct device {int dummy; } ;


 int EBUSY ;
 struct i2c_client* i2c_verify_client (struct device*) ;

__attribute__((used)) static int __i2c_check_addr(struct device *dev, void *addrp)
{
 struct i2c_client *client = i2c_verify_client(dev);
 int addr = *(int *)addrp;

 if (client && client->addr == addr)
  return -EBUSY;
 return 0;
}
