
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int error; } ;
struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct wm8739_state {int clock_freq; TYPE_1__ hdl; void* volume; void* balance; void* mute; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_5__* adapter; } ;
struct TYPE_7__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int R15 ;
 int R5 ;
 int R6 ;
 int R7 ;
 int R8 ;
 int R9 ;
 int V4L2_CID_AUDIO_BALANCE ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_VOLUME ;
 int i2c_check_functionality (TYPE_5__*,int ) ;
 int kfree (struct wm8739_state*) ;
 struct wm8739_state* kzalloc (int,int ) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_1__*) ;
 void* v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int ,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;
 int wm8739_ctrl_ops ;
 int wm8739_ops ;
 int wm8739_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8739_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct wm8739_state *state;
 struct v4l2_subdev *sd;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = kzalloc(sizeof(struct wm8739_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &wm8739_ops);
 v4l2_ctrl_handler_init(&state->hdl, 2);
 state->volume = v4l2_ctrl_new_std(&state->hdl, &wm8739_ctrl_ops,
   V4L2_CID_AUDIO_VOLUME, 0, 65535, 65535 / 100, 50736);
 state->mute = v4l2_ctrl_new_std(&state->hdl, &wm8739_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 state->balance = v4l2_ctrl_new_std(&state->hdl, &wm8739_ctrl_ops,
   V4L2_CID_AUDIO_BALANCE, 0, 65535, 65535 / 100, 32768);
 sd->ctrl_handler = &state->hdl;
 if (state->hdl.error) {
  int err = state->hdl.error;

  v4l2_ctrl_handler_free(&state->hdl);
  kfree(state);
  return err;
 }
 v4l2_ctrl_cluster(3, &state->volume);

 state->clock_freq = 48000;




 wm8739_write(sd, R15, 0x00);

 wm8739_write(sd, R5, 0x000);

 wm8739_write(sd, R6, 0x000);


 wm8739_write(sd, R7, 0x049);

 wm8739_write(sd, R8, 0x000);

 wm8739_write(sd, R9, 0x001);

 v4l2_ctrl_handler_setup(&state->hdl);
 return 0;
}
