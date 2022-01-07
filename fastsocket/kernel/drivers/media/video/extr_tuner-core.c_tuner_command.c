
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ENOIOCTLCMD ;

 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int tuner_s_config (struct v4l2_subdev*,void*) ;

__attribute__((used)) static int tuner_command(struct i2c_client *client, unsigned cmd, void *arg)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);




 switch (cmd) {
 case 128:
  return tuner_s_config(sd, arg);
 }
 return -ENOIOCTLCMD;
}
