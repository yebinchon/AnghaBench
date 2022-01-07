
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int GL520_REG_CHIP_ID ;
 int GL520_REG_CONF ;
 int GL520_REG_REVISION ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int dev_dbg (int *,char*) ;
 int gl520_read_value (struct i2c_client*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int gl520_detect(struct i2c_client *client, int kind,
   struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;


 if (kind < 0) {
  if ((gl520_read_value(client, GL520_REG_CHIP_ID) != 0x20) ||
      ((gl520_read_value(client, GL520_REG_REVISION) & 0x7f) != 0x00) ||
      ((gl520_read_value(client, GL520_REG_CONF) & 0x80) != 0x00)) {
   dev_dbg(&client->dev, "Unknown chip type, skipping\n");
   return -ENODEV;
  }
 }

 strlcpy(info->type, "gl520sm", I2C_NAME_SIZE);

 return 0;
}
