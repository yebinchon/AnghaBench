
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int DDEBUG (int,int *,char*,unsigned int) ;
 int ENOIOCTLCMD ;



 int ov7x10_get_control (struct i2c_client*,void*) ;
 int ov7x10_set_control (struct i2c_client*,void*) ;
 int ov7x10_set_window (struct i2c_client*,void*) ;

__attribute__((used)) static int ov7x10_command(struct i2c_client *c, unsigned int cmd, void *arg)
{
 switch (cmd) {
 case 129:
  return ov7x10_set_control(c, arg);
 case 130:
  return ov7x10_get_control(c, arg);
 case 128:
  return ov7x10_set_window(c, arg);
 default:
  DDEBUG(2, &c->dev, "command not supported: %d", cmd);
  return -ENOIOCTLCMD;
 }
}
