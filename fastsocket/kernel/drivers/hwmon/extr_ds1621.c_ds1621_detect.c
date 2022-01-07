
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int DS1621_REG_CONF ;
 int DS1621_REG_CONFIG_NVB ;
 int * DS1621_REG_TEMP ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int I2C_NAME_SIZE ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int ds1621_detect(struct i2c_client *client, int kind,
    struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int conf, temp;
 int i;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA
         | I2C_FUNC_SMBUS_WORD_DATA
         | I2C_FUNC_SMBUS_WRITE_BYTE))
  return -ENODEV;


 if (kind < 0) {



  conf = i2c_smbus_read_byte_data(client, DS1621_REG_CONF);
  if (conf < 0 || conf & DS1621_REG_CONFIG_NVB)
   return -ENODEV;

  for (i = 0; i < ARRAY_SIZE(DS1621_REG_TEMP); i++) {
   temp = i2c_smbus_read_word_data(client,
       DS1621_REG_TEMP[i]);
   if (temp < 0 || (temp & 0x7f00))
    return -ENODEV;
  }
 }

 strlcpy(info->type, "ds1621", I2C_NAME_SIZE);

 return 0;
}
