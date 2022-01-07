
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int i2c_adap; } ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {int type; } ;


 int I2C_CLIENT_END ;
 int I2C_NAME_SIZE ;
 struct i2c_client* i2c_new_probed_device (int *,struct i2c_board_info*,unsigned short const*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strlcpy (int ,char*,int ) ;

struct i2c_client *ivtv_i2c_new_ir_legacy(struct ivtv *itv)
{
 struct i2c_board_info info;
 const unsigned short addr_list[] = {
  0x1a,
  0x18,
  I2C_CLIENT_END
 };

 memset(&info, 0, sizeof(struct i2c_board_info));
 strlcpy(info.type, "ir_video", I2C_NAME_SIZE);
 return i2c_new_probed_device(&itv->i2c_adap, &info, addr_list);
}
