
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM63_REG_ALERT_MASK ;
 int LM63_REG_ALERT_STATUS ;
 int LM63_REG_CHIP_ID ;
 int LM63_REG_CONFIG1 ;
 int LM63_REG_CONFIG2 ;
 int LM63_REG_MAN_ID ;
 int dev_dbg (int *,char*,int,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int lm63 ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int lm63_detect(struct i2c_client *new_client, int kind,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 if (kind < 0) {
  u8 man_id, chip_id, reg_config1, reg_config2;
  u8 reg_alert_status, reg_alert_mask;

  man_id = i2c_smbus_read_byte_data(new_client,
    LM63_REG_MAN_ID);
  chip_id = i2c_smbus_read_byte_data(new_client,
     LM63_REG_CHIP_ID);
  reg_config1 = i2c_smbus_read_byte_data(new_client,
         LM63_REG_CONFIG1);
  reg_config2 = i2c_smbus_read_byte_data(new_client,
         LM63_REG_CONFIG2);
  reg_alert_status = i2c_smbus_read_byte_data(new_client,
       LM63_REG_ALERT_STATUS);
  reg_alert_mask = i2c_smbus_read_byte_data(new_client,
     LM63_REG_ALERT_MASK);

  if (man_id == 0x01
   && chip_id == 0x41
   && (reg_config1 & 0x18) == 0x00
   && (reg_config2 & 0xF8) == 0x00
   && (reg_alert_status & 0x20) == 0x00
   && (reg_alert_mask & 0xA4) == 0xA4) {
   kind = lm63;
  } else {
   dev_dbg(&adapter->dev, "Unsupported chip "
    "(man_id=0x%02X, chip_id=0x%02X).\n",
    man_id, chip_id);
   return -ENODEV;
  }
 }

 strlcpy(info->type, "lm63", I2C_NAME_SIZE);

 return 0;
}
