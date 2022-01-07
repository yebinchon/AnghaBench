
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct tda9875 {struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int do_tda9875_init (struct v4l2_subdev*) ;
 struct tda9875* kzalloc (int,int ) ;
 int tda9875_checkit (struct i2c_client*,int) ;
 int tda9875_ops ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int tda9875_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct tda9875 *t;
 struct v4l2_subdev *sd;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 if (!tda9875_checkit(client, client->addr))
  return -ENODEV;

 t = kzalloc(sizeof(*t), GFP_KERNEL);
 if (!t)
  return -ENOMEM;
 sd = &t->sd;
 v4l2_i2c_subdev_init(sd, client, &tda9875_ops);

 do_tda9875_init(sd);
 return 0;
}
