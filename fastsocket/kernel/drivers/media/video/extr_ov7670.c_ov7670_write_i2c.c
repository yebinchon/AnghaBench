
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_msg {int len; unsigned char* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 unsigned char COM7_RESET ;
 unsigned char REG_COM7 ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int msleep (int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_write_i2c(struct v4l2_subdev *sd, unsigned char reg,
  unsigned char value)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct i2c_msg msg;
 unsigned char data[2] = { reg, value };
 int ret;

 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = 2;
 msg.buf = data;
 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret > 0)
  ret = 0;
 if (reg == REG_COM7 && (value & COM7_RESET))
  msleep(5);
 return ret;
}
