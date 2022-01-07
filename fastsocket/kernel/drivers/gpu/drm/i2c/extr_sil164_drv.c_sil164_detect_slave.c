
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; int addr; } ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int member_0; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_BOARD_INFO (char*,int ) ;
 int SIL164_I2C_ADDR_SLAVE ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info const*) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int sil164_dbg (struct i2c_adapter*,char*) ;

__attribute__((used)) static struct i2c_client *
sil164_detect_slave(struct i2c_client *client)
{
 struct i2c_adapter *adap = client->adapter;
 struct i2c_msg msg = {
  .addr = SIL164_I2C_ADDR_SLAVE,
  .len = 0,
 };
 const struct i2c_board_info info = {
  I2C_BOARD_INFO("sil164", SIL164_I2C_ADDR_SLAVE)
 };

 if (i2c_transfer(adap, &msg, 1) != 1) {
  sil164_dbg(adap, "No dual-link slave found.");
  return ((void*)0);
 }

 return i2c_new_device(adap, &info);
}
