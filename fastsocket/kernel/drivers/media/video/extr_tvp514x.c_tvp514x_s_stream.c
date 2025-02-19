
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct tvp514x_reg {int dummy; } ;
struct tvp514x_decoder {int streaming; } ;
struct i2c_client {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* id_table; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;


 int ENODEV ;
 int REG_OPERATION_MODE ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 int tvp514x_configure (struct v4l2_subdev*,struct tvp514x_decoder*) ;
 int tvp514x_detect (struct v4l2_subdev*,struct tvp514x_decoder*) ;
 int tvp514x_write_reg (struct v4l2_subdev*,int ,int) ;
 int tvp514x_write_regs (struct v4l2_subdev*,struct tvp514x_reg*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp514x_s_stream(struct v4l2_subdev *sd, int enable)
{
 int err = 0;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct tvp514x_decoder *decoder = to_decoder(sd);

 if (decoder->streaming == enable)
  return 0;

 switch (enable) {
 case 0:
 {

  err = tvp514x_write_reg(sd, REG_OPERATION_MODE, 0x01);
  if (err) {
   v4l2_err(sd, "Unable to turn off decoder\n");
   return err;
  }
  decoder->streaming = enable;
  break;
 }
 case 1:
 {
  struct tvp514x_reg *int_seq = (struct tvp514x_reg *)
    client->driver->id_table->driver_data;


  err = tvp514x_write_regs(sd, int_seq);
  if (err) {
   v4l2_err(sd, "Unable to turn on decoder\n");
   return err;
  }

  err = tvp514x_detect(sd, decoder);
  if (err) {
   v4l2_err(sd, "Unable to detect decoder\n");
   return err;
  }
  err = tvp514x_configure(sd, decoder);
  if (err) {
   v4l2_err(sd, "Unable to configure decoder\n");
   return err;
  }
  decoder->streaming = enable;
  break;
 }
 default:
  err = -ENODEV;
  break;
 }

 return err;
}
