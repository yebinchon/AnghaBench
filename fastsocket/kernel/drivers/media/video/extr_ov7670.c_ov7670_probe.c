
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7670_info {struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ov7670_info* kzalloc (int,int ) ;
 int ov7670_ops ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int ov7670_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct v4l2_subdev *sd;
 struct ov7670_info *info;

 info = kzalloc(sizeof(struct ov7670_info), GFP_KERNEL);
 if (info == ((void*)0))
  return -ENOMEM;
 sd = &info->sd;
 v4l2_i2c_subdev_init(sd, client, &ov7670_ops);

 return 0;
}
