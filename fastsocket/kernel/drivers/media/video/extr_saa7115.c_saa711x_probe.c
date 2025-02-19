
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct saa711x_state {int input; int enable; int ident; int audclk_freq; int crystal_freq; scalar_t__ radio; int output; TYPE_2__* agc; TYPE_1__* gain; struct v4l2_ctrl_handler hdl; struct v4l2_subdev sd; } ;
struct i2c_device_id {int driver_data; char* name; } ;
struct i2c_client {int addr; TYPE_3__* adapter; int name; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int is_volatile; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int R_00_CHIP_VERSION ;
 int R_1E_STATUS_BYTE_1_VD_DEC ;
 int R_1F_STATUS_BYTE_2_VD_DEC ;
 int SAA7115_FREQ_24_576_MHZ ;
 int SAA7115_FREQ_32_11_MHZ ;
 int SAA7115_IPORT_ON ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CHROMA_AGC ;
 int V4L2_CID_CHROMA_GAIN ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CTRL_FLAG_UPDATE ;



 int V4L2_IDENT_SAA7114 ;
 int V4L2_IDENT_SAA7115 ;
 int V4L2_IDENT_SAA7118 ;
 int V4L2_STD_NTSC ;
 int debug ;
 int i2c_check_functionality (TYPE_3__*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kfree (struct saa711x_state*) ;
 struct saa711x_state* kzalloc (int,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int saa7111_init ;
 int saa7113_init ;
 int saa7115_init_auto_input ;
 int saa7115_init_misc ;
 int saa711x_ctrl_ops ;
 int saa711x_ops ;
 int saa711x_read (struct v4l2_subdev*,int ) ;
 int saa711x_set_v4lstd (struct v4l2_subdev*,int ) ;
 int saa711x_writeregs (struct v4l2_subdev*,int ) ;
 int snprintf (int ,int,char*,char) ;
 int v4l2_ctrl_cluster (int,TYPE_2__**) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l2_info (struct v4l2_subdev*,char*) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int,char*) ;
 int v4l_info (struct i2c_client*,char*,...) ;
 int v4l_warn (struct i2c_client*,char*,char,char*) ;

__attribute__((used)) static int saa711x_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct saa711x_state *state;
 struct v4l2_subdev *sd;
 struct v4l2_ctrl_handler *hdl;
 int i;
 char name[17];
 char chip_id;
 int autodetect = !id || id->driver_data == 1;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 for (i = 0; i < 0x0f; i++) {
  i2c_smbus_write_byte_data(client, 0, i);
  name[i] = (i2c_smbus_read_byte_data(client, 0) & 0x0f) + '0';
  if (name[i] > '9')
   name[i] += 'a' - '9' - 1;
 }
 name[i] = '\0';

 chip_id = name[5];


 if (memcmp(name, "1f711", 5)) {
  v4l_dbg(1, debug, client, "chip found @ 0x%x (ID %s) does not match a known saa711x chip.\n",
   client->addr << 1, name);
  return -ENODEV;
 }


 if (!autodetect && id->name[6] != chip_id) {
  v4l_warn(client, "found saa711%c while %s was expected\n",
    chip_id, id->name);
 }
 snprintf(client->name, sizeof(client->name), "saa711%c", chip_id);
 v4l_info(client, "saa711%c found (%s) @ 0x%x (%s)\n", chip_id, name,
   client->addr << 1, client->adapter->name);

 state = kzalloc(sizeof(struct saa711x_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &saa711x_ops);

 hdl = &state->hdl;
 v4l2_ctrl_handler_init(hdl, 6);

 v4l2_ctrl_new_std(hdl, &saa711x_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);
 v4l2_ctrl_new_std(hdl, &saa711x_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 127, 1, 64);
 v4l2_ctrl_new_std(hdl, &saa711x_ctrl_ops,
   V4L2_CID_SATURATION, 0, 127, 1, 64);
 v4l2_ctrl_new_std(hdl, &saa711x_ctrl_ops,
   V4L2_CID_HUE, -128, 127, 1, 0);
 state->agc = v4l2_ctrl_new_std(hdl, &saa711x_ctrl_ops,
   V4L2_CID_CHROMA_AGC, 0, 1, 1, 1);
 state->gain = v4l2_ctrl_new_std(hdl, &saa711x_ctrl_ops,
   V4L2_CID_CHROMA_GAIN, 0, 127, 1, 40);
 state->gain->is_volatile = 1;
 sd->ctrl_handler = hdl;
 if (hdl->error) {
  int err = hdl->error;

  v4l2_ctrl_handler_free(hdl);
  kfree(state);
  return err;
 }
 state->agc->flags |= V4L2_CTRL_FLAG_UPDATE;
 v4l2_ctrl_cluster(2, &state->agc);

 state->input = -1;
 state->output = SAA7115_IPORT_ON;
 state->enable = 1;
 state->radio = 0;
 switch (chip_id) {
 case '1':
  state->ident = 130;
  if (saa711x_read(sd, R_00_CHIP_VERSION) & 0xf0) {
   v4l_info(client, "saa7111a variant found\n");
   state->ident = 129;
  }
  break;
 case '3':
  state->ident = 128;
  break;
 case '4':
  state->ident = V4L2_IDENT_SAA7114;
  break;
 case '5':
  state->ident = V4L2_IDENT_SAA7115;
  break;
 case '8':
  state->ident = V4L2_IDENT_SAA7118;
  break;
 default:
  state->ident = 130;
  v4l2_info(sd, "WARNING: Chip is not known - Falling back to saa7111\n");
  break;
 }

 state->audclk_freq = 48000;

 v4l2_dbg(1, debug, sd, "writing init values\n");


 state->crystal_freq = SAA7115_FREQ_24_576_MHZ;
 switch (state->ident) {
 case 130:
 case 129:
  saa711x_writeregs(sd, saa7111_init);
  break;
 case 128:
  saa711x_writeregs(sd, saa7113_init);
  break;
 default:
  state->crystal_freq = SAA7115_FREQ_32_11_MHZ;
  saa711x_writeregs(sd, saa7115_init_auto_input);
 }
 if (state->ident > 129)
  saa711x_writeregs(sd, saa7115_init_misc);
 saa711x_set_v4lstd(sd, V4L2_STD_NTSC);
 v4l2_ctrl_handler_setup(hdl);

 v4l2_dbg(1, debug, sd, "status: (1E) 0x%02x, (1F) 0x%02x\n",
  saa711x_read(sd, R_1E_STATUS_BYTE_1_VD_DEC),
  saa711x_read(sd, R_1F_STATUS_BYTE_2_VD_DEC));
 return 0;
}
