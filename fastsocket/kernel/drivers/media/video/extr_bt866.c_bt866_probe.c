
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct bt866 {struct v4l2_subdev sd; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bt866_ops ;
 struct bt866* kzalloc (int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int bt866_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct bt866 *encoder;
 struct v4l2_subdev *sd;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 encoder = kzalloc(sizeof(*encoder), GFP_KERNEL);
 if (encoder == ((void*)0))
  return -ENOMEM;
 sd = &encoder->sd;
 v4l2_i2c_subdev_init(sd, client, &bt866_ops);
 return 0;
}
