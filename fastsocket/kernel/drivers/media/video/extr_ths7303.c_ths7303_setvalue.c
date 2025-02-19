
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int V4L2_STD_ALL ;
 int V4L2_STD_SECAM ;
 int debug ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ths7303_setvalue(struct v4l2_subdev *sd, v4l2_std_id std)
{
 int err = 0;
 u8 val;
 struct i2c_client *client;

 client = v4l2_get_subdevdata(sd);

 if (std & (V4L2_STD_ALL & ~V4L2_STD_SECAM)) {
  val = 0x02;
  v4l2_dbg(1, debug, sd, "setting value for SDTV format\n");
 } else {
  val = 0x00;
  v4l2_dbg(1, debug, sd, "disabling all channels\n");
 }

 err |= i2c_smbus_write_byte_data(client, 0x01, val);
 err |= i2c_smbus_write_byte_data(client, 0x02, val);
 err |= i2c_smbus_write_byte_data(client, 0x03, val);

 if (err)
  v4l2_err(sd, "write failed\n");

 return err;
}
