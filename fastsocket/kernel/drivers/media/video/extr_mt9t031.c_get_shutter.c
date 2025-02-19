
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int MT9T031_SHUTTER_WIDTH ;
 int MT9T031_SHUTTER_WIDTH_UPPER ;
 int reg_read (struct i2c_client*,int ) ;

__attribute__((used)) static int get_shutter(struct i2c_client *client, u32 *data)
{
 int ret;

 ret = reg_read(client, MT9T031_SHUTTER_WIDTH_UPPER);
 *data = ret << 16;

 if (ret >= 0)
  ret = reg_read(client, MT9T031_SHUTTER_WIDTH);
 *data |= ret & 0xffff;

 return ret < 0 ? ret : 0;
}
