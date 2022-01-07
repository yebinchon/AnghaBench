
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int * type; } ;


 int i2c_client_type ;
 struct i2c_client* to_i2c_client (struct device*) ;

struct i2c_client *i2c_verify_client(struct device *dev)
{
 return (dev->type == &i2c_client_type)
   ? to_i2c_client(dev)
   : ((void*)0);
}
