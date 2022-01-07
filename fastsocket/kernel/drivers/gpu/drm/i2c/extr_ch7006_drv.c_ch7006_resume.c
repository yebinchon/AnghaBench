
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int ch7006_dbg (struct i2c_client*,char*) ;
 int ch7006_write (struct i2c_client*,int,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ch7006_resume(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);

 ch7006_dbg(client, "\n");

 ch7006_write(client, 0x3d, 0x0);

 return 0;
}
