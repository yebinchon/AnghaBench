
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef char u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_msg {int member_1; int member_2; char* member_3; int member_0; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int reg ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int I2C_M_NO_RD_ACK ;
 int I2C_M_RD ;
 int debug ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static u8 ks0127_read(struct v4l2_subdev *sd, u8 reg)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 char val = 0;
 struct i2c_msg msgs[] = {
  { client->addr, 0, sizeof(reg), &reg },
  { client->addr, I2C_M_RD | I2C_M_NO_RD_ACK, sizeof(val), &val }
 };
 int ret;

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret != ARRAY_SIZE(msgs))
  v4l2_dbg(1, debug, sd, "read error\n");

 return val;
}
