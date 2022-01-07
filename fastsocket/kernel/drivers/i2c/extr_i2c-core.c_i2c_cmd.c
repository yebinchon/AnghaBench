
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_cmd_arg {int arg; int cmd; } ;
struct i2c_client {TYPE_1__* driver; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* command ) (struct i2c_client*,int ,int ) ;} ;


 struct i2c_client* i2c_verify_client (struct device*) ;
 int stub1 (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int i2c_cmd(struct device *dev, void *_arg)
{
 struct i2c_client *client = i2c_verify_client(dev);
 struct i2c_cmd_arg *arg = _arg;

 if (client && client->driver && client->driver->command)
  client->driver->command(client, arg->cmd, arg->arg);
 return 0;
}
