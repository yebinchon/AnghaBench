
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct tlv320aic23b_state {scalar_t__ muted; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 struct tlv320aic23b_state* kzalloc (int,int ) ;
 int tlv320aic23b_ops ;
 int tlv320aic23b_write (struct v4l2_subdev*,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int tlv320aic23b_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct tlv320aic23b_state *state;
 struct v4l2_subdev *sd;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = kzalloc(sizeof(struct tlv320aic23b_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &tlv320aic23b_ops);
 state->muted = 0;




 tlv320aic23b_write(sd, 15, 0x000);

 tlv320aic23b_write(sd, 6, 0x00A);

 tlv320aic23b_write(sd, 7, 0x049);

 tlv320aic23b_write(sd, 0, 0x119);

 tlv320aic23b_write(sd, 8, 0x000);

 tlv320aic23b_write(sd, 9, 0x001);
 return 0;
}
