
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_cmd_arg {unsigned int cmd; void* arg; } ;
struct i2c_adapter {int dev; } ;


 int device_for_each_child (int *,struct i2c_cmd_arg*,int ) ;
 int i2c_cmd ;

void i2c_clients_command(struct i2c_adapter *adap, unsigned int cmd, void *arg)
{
 struct i2c_cmd_arg cmd_arg;

 cmd_arg.cmd = cmd;
 cmd_arg.arg = arg;
 device_for_each_child(&adap->dev, &cmd_arg, i2c_cmd);
}
