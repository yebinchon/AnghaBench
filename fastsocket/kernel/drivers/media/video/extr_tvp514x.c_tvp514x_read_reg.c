
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int I2C_RETRY_COUNT ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int msleep_interruptible (int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_warn (struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int tvp514x_read_reg(struct v4l2_subdev *sd, u8 reg)
{
 int err, retry = 0;
 struct i2c_client *client = v4l2_get_subdevdata(sd);

read_again:

 err = i2c_smbus_read_byte_data(client, reg);
 if (err == -1) {
  if (retry <= I2C_RETRY_COUNT) {
   v4l2_warn(sd, "Read: retry ... %d\n", retry);
   retry++;
   msleep_interruptible(10);
   goto read_again;
  }
 }

 return err;
}
