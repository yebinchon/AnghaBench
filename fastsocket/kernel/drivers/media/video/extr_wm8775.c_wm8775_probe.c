
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int error; } ;
struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct wm8775_state {int input; TYPE_1__ hdl; int mute; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_4__* adapter; } ;
struct TYPE_6__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int R11 ;
 int R12 ;
 int R13 ;
 int R14 ;
 int R15 ;
 int R16 ;
 int R17 ;
 int R18 ;
 int R19 ;
 int R20 ;
 int R21 ;
 int R23 ;
 int R7 ;
 int V4L2_CID_AUDIO_MUTE ;
 int i2c_check_functionality (TYPE_4__*,int ) ;
 int kfree (struct wm8775_state*) ;
 struct wm8775_state* kzalloc (int,int ) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int ,int,int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;
 int wm8775_ctrl_ops ;
 int wm8775_ops ;
 int wm8775_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8775_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct wm8775_state *state;
 struct v4l2_subdev *sd;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = kzalloc(sizeof(struct wm8775_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &wm8775_ops);
 state->input = 2;

 v4l2_ctrl_handler_init(&state->hdl, 1);
 state->mute = v4l2_ctrl_new_std(&state->hdl, &wm8775_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 sd->ctrl_handler = &state->hdl;
 if (state->hdl.error) {
  int err = state->hdl.error;

  v4l2_ctrl_handler_free(&state->hdl);
  kfree(state);
  return err;
 }




 wm8775_write(sd, R23, 0x000);

 wm8775_write(sd, R7, 0x000);

 wm8775_write(sd, R11, 0x021);

 wm8775_write(sd, R12, 0x102);

 wm8775_write(sd, R13, 0x000);

 wm8775_write(sd, R14, 0x1d4);

 wm8775_write(sd, R15, 0x1d4);

 wm8775_write(sd, R16, 0x1bf);


 wm8775_write(sd, R17, 0x185);

 wm8775_write(sd, R18, 0x0a2);

 wm8775_write(sd, R19, 0x005);

 wm8775_write(sd, R20, 0x07a);

 wm8775_write(sd, R21, 0x102);
 return 0;
}
