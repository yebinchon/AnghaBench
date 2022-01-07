
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int debug ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void tda9840_write(struct v4l2_subdev *sd, u8 reg, u8 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (i2c_smbus_write_byte_data(client, reg, val))
  v4l2_dbg(1, debug, sd, "error writing %02x to %02x\n",
    val, reg);
}
