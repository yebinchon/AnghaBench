
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_5__* adapter; } ;
struct TYPE_6__ {int error; } ;
struct cx25840_state {int audclk_freq; int vbi_line_offset; int id; int rev; TYPE_1__ hdl; void* volume; void* mute; int audmode; scalar_t__ pvr150_workaround; int aud_input; int vid_input; struct i2c_client* c; struct v4l2_subdev sd; } ;
struct TYPE_7__ {int name; } ;


 int CX25840_AUDIO8 ;
 int CX25840_COMPOSITE7 ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_AUDIO_BALANCE ;
 int V4L2_CID_AUDIO_BASS ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_TREBLE ;
 int V4L2_CID_AUDIO_VOLUME ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int V4L2_IDENT_NONE ;
 int V4L2_TUNER_MODE_LANG1 ;
 int cx25840_audio_ctrl_ops ;
 int cx25840_ctrl_ops ;
 int cx25840_debug ;
 int cx25840_ir_probe (struct v4l2_subdev*) ;
 int cx25840_ops ;
 int cx25840_read (struct i2c_client*,int) ;
 int cx25840_write (struct i2c_client*,int,int) ;
 int get_cx2388x_ident (struct i2c_client*) ;
 int i2c_check_functionality (TYPE_5__*,int ) ;
 int is_cx2583x (struct cx25840_state*) ;
 int kfree (struct cx25840_state*) ;
 struct cx25840_state* kzalloc (int,int ) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_1__*) ;
 void* v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,...) ;
 int v4l_err (struct i2c_client*,char*,...) ;
 int v4l_info (struct i2c_client*,char*,int,int,...) ;

__attribute__((used)) static int cx25840_probe(struct i2c_client *client,
    const struct i2c_device_id *did)
{
 struct cx25840_state *state;
 struct v4l2_subdev *sd;
 int default_volume;
 u32 id = V4L2_IDENT_NONE;
 u16 device_id;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_dbg(1, cx25840_debug, client, "detecting cx25840 client on address 0x%x\n", client->addr << 1);

 device_id = cx25840_read(client, 0x101) << 8;
 device_id |= cx25840_read(client, 0x100);
 v4l_dbg(1, cx25840_debug, client, "device_id = 0x%04x\n", device_id);



 if ((device_id & 0xff00) == 0x8300) {
  id = 133 + ((device_id >> 4) & 0xf) - 6;
 } else if ((device_id & 0xff00) == 0x8400) {
  id = 131 + ((device_id >> 4) & 0xf);
 } else if (device_id == 0x0000) {
  id = get_cx2388x_ident(client);
 } else if ((device_id & 0xfff0) == 0x5A30) {

  id = 137;
 } else if ((device_id & 0xff) == (device_id >> 8)) {
  v4l_err(client,
   "likely a confused/unresponsive cx2388[578] A/V decoder"
   " found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);
  v4l_err(client, "A method to reset it from the cx25840 driver"
   " software is not known at this time\n");
  return -ENODEV;
 } else {
  v4l_dbg(1, cx25840_debug, client, "cx25840 not found\n");
  return -ENODEV;
 }

 state = kzalloc(sizeof(struct cx25840_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;

 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &cx25840_ops);

 switch (id) {
 case 136:
  v4l_info(client, "cx23885 A/V decoder found @ 0x%x (%s)\n",
    client->addr << 1, client->adapter->name);
  break;
 case 135:
  v4l_info(client, "cx23887 A/V decoder found @ 0x%x (%s)\n",
    client->addr << 1, client->adapter->name);
  break;
 case 134:
  v4l_info(client, "cx23888 A/V decoder found @ 0x%x (%s)\n",
    client->addr << 1, client->adapter->name);
  break;
 case 137:
  v4l_info(client, "cx%d A/V decoder found @ 0x%x (%s)\n",
    device_id, client->addr << 1, client->adapter->name);
  break;
 case 131:
 case 130:
 case 129:
 case 128:


  v4l_info(client, "cx25%3x-2%x found @ 0x%x (%s)\n",
    (device_id & 0xfff0) >> 4,
    (device_id & 0x0f) < 3 ? (device_id & 0x0f) + 1
      : (device_id & 0x0f),
    client->addr << 1, client->adapter->name);
  break;
 case 133:
 case 132:
 default:
  v4l_info(client, "cx25%3x-%x found @ 0x%x (%s)\n",
    (device_id & 0xfff0) >> 4, device_id & 0x0f,
    client->addr << 1, client->adapter->name);
  break;
 }

 state->c = client;
 state->vid_input = CX25840_COMPOSITE7;
 state->aud_input = CX25840_AUDIO8;
 state->audclk_freq = 48000;
 state->pvr150_workaround = 0;
 state->audmode = V4L2_TUNER_MODE_LANG1;
 state->vbi_line_offset = 8;
 state->id = id;
 state->rev = device_id;
 v4l2_ctrl_handler_init(&state->hdl, 9);
 v4l2_ctrl_new_std(&state->hdl, &cx25840_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);
 v4l2_ctrl_new_std(&state->hdl, &cx25840_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 127, 1, 64);
 v4l2_ctrl_new_std(&state->hdl, &cx25840_ctrl_ops,
   V4L2_CID_SATURATION, 0, 127, 1, 64);
 v4l2_ctrl_new_std(&state->hdl, &cx25840_ctrl_ops,
   V4L2_CID_HUE, -128, 127, 1, 0);
 if (!is_cx2583x(state)) {
  default_volume = cx25840_read(client, 0x8d4);





  if (default_volume > 228) {

   default_volume = 228;
   cx25840_write(client, 0x8d4, 228);
  }
  else if (default_volume < 20) {

   default_volume = 20;
   cx25840_write(client, 0x8d4, 20);
  }
  default_volume = (((228 - default_volume) >> 1) + 23) << 9;

  state->volume = v4l2_ctrl_new_std(&state->hdl,
   &cx25840_audio_ctrl_ops, V4L2_CID_AUDIO_VOLUME,
   0, 65535, 65535 / 100, default_volume);
  state->mute = v4l2_ctrl_new_std(&state->hdl,
   &cx25840_audio_ctrl_ops, V4L2_CID_AUDIO_MUTE,
   0, 1, 1, 0);
  v4l2_ctrl_new_std(&state->hdl, &cx25840_audio_ctrl_ops,
   V4L2_CID_AUDIO_BALANCE,
   0, 65535, 65535 / 100, 32768);
  v4l2_ctrl_new_std(&state->hdl, &cx25840_audio_ctrl_ops,
   V4L2_CID_AUDIO_BASS,
   0, 65535, 65535 / 100, 32768);
  v4l2_ctrl_new_std(&state->hdl, &cx25840_audio_ctrl_ops,
   V4L2_CID_AUDIO_TREBLE,
   0, 65535, 65535 / 100, 32768);
 }
 sd->ctrl_handler = &state->hdl;
 if (state->hdl.error) {
  int err = state->hdl.error;

  v4l2_ctrl_handler_free(&state->hdl);
  kfree(state);
  return err;
 }
 if (!is_cx2583x(state))
  v4l2_ctrl_cluster(2, &state->volume);
 v4l2_ctrl_handler_setup(&state->hdl);

 cx25840_ir_probe(sd);
 return 0;
}
