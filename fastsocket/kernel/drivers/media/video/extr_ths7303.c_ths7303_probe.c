
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_STD_NTSC ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 struct v4l2_subdev* kzalloc (int,int ) ;
 int ths7303_ops ;
 int ths7303_setvalue (struct v4l2_subdev*,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int ths7303_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct v4l2_subdev *sd;
 v4l2_std_id std_id = V4L2_STD_NTSC;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 sd = kzalloc(sizeof(struct v4l2_subdev), GFP_KERNEL);
 if (sd == ((void*)0))
  return -ENOMEM;

 v4l2_i2c_subdev_init(sd, client, &ths7303_ops);

 return ths7303_setvalue(sd, std_id);
}
