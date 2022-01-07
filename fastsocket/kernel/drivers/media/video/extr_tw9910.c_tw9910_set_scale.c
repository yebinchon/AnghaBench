
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw9910_scale_ctrl {int vscale; int hscale; } ;
struct i2c_client {int dummy; } ;


 int HSCALE_LO ;
 int SCALE_HI ;
 int VSCALE_LO ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int tw9910_set_scale(struct i2c_client *client,
       const struct tw9910_scale_ctrl *scale)
{
 int ret;

 ret = i2c_smbus_write_byte_data(client, SCALE_HI,
     (scale->vscale & 0x0F00) >> 4 |
     (scale->hscale & 0x0F00) >> 8);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte_data(client, HSCALE_LO,
     scale->hscale & 0x00FF);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte_data(client, VSCALE_LO,
     scale->vscale & 0x00FF);

 return ret;
}
