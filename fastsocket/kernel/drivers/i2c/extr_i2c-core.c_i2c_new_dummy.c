
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {int member_0; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_BOARD_INFO (char*,int ) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;

struct i2c_client *i2c_new_dummy(struct i2c_adapter *adapter, u16 address)
{
 struct i2c_board_info info = {
  I2C_BOARD_INFO("dummy", address),
 };

 return i2c_new_device(adapter, &info);
}
