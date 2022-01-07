
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int MAX6650_REG_ALARM ;
 int MAX6650_REG_ALARM_EN ;
 int MAX6650_REG_CONFIG ;
 int MAX6650_REG_COUNT ;
 int MAX6650_REG_GPIO_STAT ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int max6650_detect(struct i2c_client *client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;

 dev_dbg(&adapter->dev, "max6650_detect called, kind = %d\n", kind);

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_dbg(&adapter->dev, "max6650: I2C bus doesn't support "
     "byte read mode, skipping.\n");
  return -ENODEV;
 }
 if ((kind < 0) &&
    ( (i2c_smbus_read_byte_data(client, MAX6650_REG_CONFIG) & 0xC0)
     ||(i2c_smbus_read_byte_data(client, MAX6650_REG_GPIO_STAT) & 0xE0)
     ||(i2c_smbus_read_byte_data(client, MAX6650_REG_ALARM_EN) & 0xE0)
     ||(i2c_smbus_read_byte_data(client, MAX6650_REG_ALARM) & 0xE0)
     ||(i2c_smbus_read_byte_data(client, MAX6650_REG_COUNT) & 0xFC))) {
  dev_dbg(&adapter->dev,
   "max6650: detection failed at 0x%02x.\n", address);
  return -ENODEV;
 }

 dev_info(&adapter->dev, "max6650: chip found at 0x%02x.\n", address);

 strlcpy(info->type, "max6650", I2C_NAME_SIZE);

 return 0;
}
