
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct adv7343_state {int reg00; int reg01; int reg02; int reg35; int sd; int std; int output; int reg82; int reg80; } ;
struct TYPE_2__ {int name; } ;


 int ADV7343_COMPOSITE_ID ;
 int ADV7343_SD_MODE_REG1_DEFAULT ;
 int ADV7343_SD_MODE_REG2_DEFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_STD_NTSC ;
 int adv7343_initialize (int *) ;
 int adv7343_ops ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 struct adv7343_state* kzalloc (int,int ) ;
 int v4l2_i2c_subdev_init (int *,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int adv7343_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adv7343_state *state;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = kzalloc(sizeof(struct adv7343_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;

 state->reg00 = 0x80;
 state->reg01 = 0x00;
 state->reg02 = 0x20;
 state->reg35 = 0x00;
 state->reg80 = ADV7343_SD_MODE_REG1_DEFAULT;
 state->reg82 = ADV7343_SD_MODE_REG2_DEFAULT;

 state->output = ADV7343_COMPOSITE_ID;
 state->std = V4L2_STD_NTSC;

 v4l2_i2c_subdev_init(&state->sd, client, &adv7343_ops);
 return adv7343_initialize(&state->sd);
}
