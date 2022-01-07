
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int addr; } ;


 int debug ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int ) ;
 int to_tvp5150 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_remove(struct i2c_client *c)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(c);

 v4l2_dbg(1, debug, sd,
  "tvp5150.c: removing tvp5150 adapter on address 0x%x\n",
  c->addr << 1);

 v4l2_device_unregister_subdev(sd);
 kfree(to_tvp5150(sd));
 return 0;
}
