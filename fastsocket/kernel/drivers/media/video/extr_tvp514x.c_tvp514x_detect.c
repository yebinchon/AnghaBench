
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;
struct tvp514x_decoder {scalar_t__ ver; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int name; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int REG_CHIP_ID_LSB ;
 int REG_CHIP_ID_MSB ;
 int REG_ROM_VERSION ;
 scalar_t__ TVP5146_CHIP_ID_LSB ;
 scalar_t__ TVP5147_CHIP_ID_LSB ;
 scalar_t__ TVP514X_CHIP_ID_MSB ;
 int debug ;
 scalar_t__ tvp514x_read_reg (struct v4l2_subdev*,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int v4l2_err (struct v4l2_subdev*,char*,scalar_t__,scalar_t__) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,scalar_t__,int,int ) ;

__attribute__((used)) static int tvp514x_detect(struct v4l2_subdev *sd,
  struct tvp514x_decoder *decoder)
{
 u8 chip_id_msb, chip_id_lsb, rom_ver;
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 chip_id_msb = tvp514x_read_reg(sd, REG_CHIP_ID_MSB);
 chip_id_lsb = tvp514x_read_reg(sd, REG_CHIP_ID_LSB);
 rom_ver = tvp514x_read_reg(sd, REG_ROM_VERSION);

 v4l2_dbg(1, debug, sd,
   "chip id detected msb:0x%x lsb:0x%x rom version:0x%x\n",
   chip_id_msb, chip_id_lsb, rom_ver);
 if ((chip_id_msb != TVP514X_CHIP_ID_MSB)
  || ((chip_id_lsb != TVP5146_CHIP_ID_LSB)
  && (chip_id_lsb != TVP5147_CHIP_ID_LSB))) {



  v4l2_err(sd, "chip id mismatch msb:0x%x lsb:0x%x\n",
    chip_id_msb, chip_id_lsb);
  return -ENODEV;
 }

 decoder->ver = rom_ver;

 v4l2_info(sd, "%s (Version - 0x%.2x) found at 0x%x (%s)\n",
   client->name, decoder->ver,
   client->addr << 1, client->adapter->name);
 return 0;
}
