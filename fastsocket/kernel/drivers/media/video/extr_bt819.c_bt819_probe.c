
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct bt819 {int enable; int contrast; int sat; scalar_t__ hue; scalar_t__ bright; scalar_t__ input; int norm; int ident; struct v4l2_subdev sd; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_IDENT_BT815A ;
 int V4L2_IDENT_BT817A ;
 int V4L2_IDENT_BT819A ;
 int V4L2_STD_NTSC ;
 int bt819_init (struct v4l2_subdev*) ;
 int bt819_ops ;
 int bt819_read (struct bt819*,int) ;
 int debug ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 struct bt819* kzalloc (int,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,char const*,int,int ) ;

__attribute__((used)) static int bt819_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int i, ver;
 struct bt819 *decoder;
 struct v4l2_subdev *sd;
 const char *name;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 decoder = kzalloc(sizeof(struct bt819), GFP_KERNEL);
 if (decoder == ((void*)0))
  return -ENOMEM;
 sd = &decoder->sd;
 v4l2_i2c_subdev_init(sd, client, &bt819_ops);

 ver = bt819_read(decoder, 0x17);
 switch (ver & 0xf0) {
 case 0x70:
  name = "bt819a";
  decoder->ident = V4L2_IDENT_BT819A;
  break;
 case 0x60:
  name = "bt817a";
  decoder->ident = V4L2_IDENT_BT817A;
  break;
 case 0x20:
  name = "bt815a";
  decoder->ident = V4L2_IDENT_BT815A;
  break;
 default:
  v4l2_dbg(1, debug, sd,
   "unknown chip version 0x%02x\n", ver);
  return -ENODEV;
 }

 v4l_info(client, "%s found @ 0x%x (%s)\n", name,
   client->addr << 1, client->adapter->name);

 decoder->norm = V4L2_STD_NTSC;
 decoder->input = 0;
 decoder->enable = 1;
 decoder->bright = 0;
 decoder->contrast = 0xd8;
 decoder->hue = 0;
 decoder->sat = 0xfe;

 i = bt819_init(sd);
 if (i < 0)
  v4l2_dbg(1, debug, sd, "init status %d\n", i);
 return 0;
}
