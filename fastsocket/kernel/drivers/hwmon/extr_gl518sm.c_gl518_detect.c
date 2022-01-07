
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int GL518_REG_CHIP_ID ;
 int GL518_REG_CONF ;
 int GL518_REG_REVISION ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int dev_info (int *,char*,int ,int ) ;
 int gl518_read_value (struct i2c_client*,int ) ;
 int gl518sm_r00 ;
 int gl518sm_r80 ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int gl518_detect(struct i2c_client *client, int kind,
   struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int i;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;



 if (kind < 0) {
  if ((gl518_read_value(client, GL518_REG_CHIP_ID) != 0x80)
   || (gl518_read_value(client, GL518_REG_CONF) & 0x80))
   return -ENODEV;
 }


 if (kind <= 0) {
  i = gl518_read_value(client, GL518_REG_REVISION);
  if (i == 0x00) {
   kind = gl518sm_r00;
  } else if (i == 0x80) {
   kind = gl518sm_r80;
  } else {
   if (kind <= 0)
    dev_info(&adapter->dev,
        "Ignoring 'force' parameter for unknown "
        "chip at adapter %d, address 0x%02x\n",
        i2c_adapter_id(adapter), client->addr);
   return -ENODEV;
  }
 }

 strlcpy(info->type, "gl518sm", I2C_NAME_SIZE);

 return 0;
}
