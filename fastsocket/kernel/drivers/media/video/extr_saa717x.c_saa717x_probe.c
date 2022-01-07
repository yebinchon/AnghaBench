
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct saa717x_state {int input; int enable; int audio; int audio_input; int audio_main_vol_l; int audio_main_vol_r; int tuner_audio_mode; scalar_t__ playback; int std; struct v4l2_ctrl_handler hdl; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int TASK_INTERRUPTIBLE ;
 int TUNER_AUDIO_STEREO ;
 int V4L2_CID_AUDIO_BALANCE ;
 int V4L2_CID_AUDIO_BASS ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_TREBLE ;
 int V4L2_CID_AUDIO_VOLUME ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int V4L2_STD_NTSC ;
 int debug ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int kfree (struct saa717x_state*) ;
 struct saa717x_state* kzalloc (int,int ) ;
 int reg_init_initialize ;
 int saa717x_ctrl_ops ;
 int saa717x_ops ;
 int saa717x_read (struct v4l2_subdev*,int) ;
 scalar_t__ saa717x_write (struct v4l2_subdev*,int,int) ;
 int saa717x_write_regs (struct v4l2_subdev*,int ) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l2_info (struct v4l2_subdev*,char*,char*,int,int ) ;

__attribute__((used)) static int saa717x_probe(struct i2c_client *client,
    const struct i2c_device_id *did)
{
 struct saa717x_state *decoder;
 struct v4l2_ctrl_handler *hdl;
 struct v4l2_subdev *sd;
 u8 id = 0;
 char *p = "";


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 decoder = kzalloc(sizeof(struct saa717x_state), GFP_KERNEL);
 if (decoder == ((void*)0))
  return -ENOMEM;

 sd = &decoder->sd;
 v4l2_i2c_subdev_init(sd, client, &saa717x_ops);

 if (saa717x_write(sd, 0x5a4, 0xfe) &&
   saa717x_write(sd, 0x5a5, 0x0f) &&
   saa717x_write(sd, 0x5a6, 0x00) &&
   saa717x_write(sd, 0x5a7, 0x01))
  id = saa717x_read(sd, 0x5a0);
 if (id != 0xc2 && id != 0x32 && id != 0xf2 && id != 0x6c) {
  v4l2_dbg(1, debug, sd, "saa717x not found (id=%02x)\n", id);
  kfree(decoder);
  return -ENODEV;
 }
 if (id == 0xc2)
  p = "saa7173";
 else if (id == 0x32)
  p = "saa7174A";
 else if (id == 0x6c)
  p = "saa7174HL";
 else
  p = "saa7171";
 v4l2_info(sd, "%s found @ 0x%x (%s)\n", p,
   client->addr << 1, client->adapter->name);

 hdl = &decoder->hdl;
 v4l2_ctrl_handler_init(hdl, 9);

 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);
 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 255, 1, 68);
 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_SATURATION, 0, 255, 1, 64);
 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_HUE, -128, 127, 1, 0);
 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_AUDIO_VOLUME, 0, 65535, 65535 / 100, 42000);
 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_AUDIO_BALANCE, 0, 65535, 65535 / 100, 32768);
 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_AUDIO_BASS, -16, 15, 1, 0);
 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_AUDIO_TREBLE, -16, 15, 1, 0);
 v4l2_ctrl_new_std(hdl, &saa717x_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 sd->ctrl_handler = hdl;
 if (hdl->error) {
  int err = hdl->error;

  v4l2_ctrl_handler_free(hdl);
  kfree(decoder);
  return err;
 }

 decoder->std = V4L2_STD_NTSC;
 decoder->input = -1;
 decoder->enable = 1;


 decoder->playback = 0;
 decoder->audio = 1;

 decoder->audio_input = 2;

 decoder->tuner_audio_mode = TUNER_AUDIO_STEREO;

 decoder->audio_main_vol_l = 6;
 decoder->audio_main_vol_r = 6;

 v4l2_dbg(1, debug, sd, "writing init values\n");


 saa717x_write_regs(sd, reg_init_initialize);

 v4l2_ctrl_handler_setup(hdl);

 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(2*HZ);
 return 0;
}
