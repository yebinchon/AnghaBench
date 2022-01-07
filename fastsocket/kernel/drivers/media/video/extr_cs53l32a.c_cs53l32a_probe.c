
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_4__* adapter; int name; } ;
struct TYPE_5__ {int error; } ;
struct cs53l32a_state {TYPE_1__ hdl; struct v4l2_subdev sd; } ;
struct TYPE_6__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_VOLUME ;
 int cs53l32a_ctrl_ops ;
 int cs53l32a_ops ;
 int cs53l32a_read (struct v4l2_subdev*,int) ;
 int cs53l32a_write (struct v4l2_subdev*,int,int) ;
 int debug ;
 int i2c_check_functionality (TYPE_4__*,int ) ;
 int kfree (struct cs53l32a_state*) ;
 struct cs53l32a_state* kzalloc (int,int ) ;
 int strlcpy (int ,char*,int) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int,int,int,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int cs53l32a_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct cs53l32a_state *state;
 struct v4l2_subdev *sd;
 int i;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 if (!id)
  strlcpy(client->name, "cs53l32a", sizeof(client->name));

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = kzalloc(sizeof(struct cs53l32a_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &cs53l32a_ops);

 for (i = 1; i <= 7; i++) {
  u8 v = cs53l32a_read(sd, i);

  v4l2_dbg(1, debug, sd, "Read Reg %d %02x\n", i, v);
 }

 v4l2_ctrl_handler_init(&state->hdl, 2);
 v4l2_ctrl_new_std(&state->hdl, &cs53l32a_ctrl_ops,
   V4L2_CID_AUDIO_VOLUME, -96, 12, 1, 0);
 v4l2_ctrl_new_std(&state->hdl, &cs53l32a_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 sd->ctrl_handler = &state->hdl;
 if (state->hdl.error) {
  int err = state->hdl.error;

  v4l2_ctrl_handler_free(&state->hdl);
  kfree(state);
  return err;
 }



 cs53l32a_write(sd, 0x01, 0x21);
 cs53l32a_write(sd, 0x02, 0x29);
 cs53l32a_write(sd, 0x03, 0x30);
 cs53l32a_write(sd, 0x04, 0x00);
 cs53l32a_write(sd, 0x05, 0x00);
 cs53l32a_write(sd, 0x06, 0x00);
 cs53l32a_write(sd, 0x07, 0x00);



 for (i = 1; i <= 7; i++) {
  u8 v = cs53l32a_read(sd, i);

  v4l2_dbg(1, debug, sd, "Read Reg %d %02x\n", i, v);
 }
 return 0;
}
