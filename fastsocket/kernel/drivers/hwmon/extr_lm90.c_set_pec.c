
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int I2C_CLIENT_PEC ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_pec(struct device *dev, struct device_attribute *dummy,
         const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 long val = simple_strtol(buf, ((void*)0), 10);

 switch (val) {
 case 0:
  client->flags &= ~I2C_CLIENT_PEC;
  break;
 case 1:
  client->flags |= I2C_CLIENT_PEC;
  break;
 default:
  return -EINVAL;
 }

 return count;
}
