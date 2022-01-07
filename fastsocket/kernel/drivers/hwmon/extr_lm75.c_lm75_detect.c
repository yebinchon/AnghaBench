
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int lm75_detect(struct i2c_client *new_client, int kind,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 int i;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;
 if (kind < 0) {
  int cur, conf, hyst, os;


  cur = i2c_smbus_read_word_data(new_client, 0);
  conf = i2c_smbus_read_byte_data(new_client, 1);
  hyst = i2c_smbus_read_word_data(new_client, 2);
  if (i2c_smbus_read_word_data(new_client, 4) != hyst
   || i2c_smbus_read_word_data(new_client, 5) != hyst
   || i2c_smbus_read_word_data(new_client, 6) != hyst
   || i2c_smbus_read_word_data(new_client, 7) != hyst)
   return -ENODEV;
  os = i2c_smbus_read_word_data(new_client, 3);
  if (i2c_smbus_read_word_data(new_client, 4) != os
   || i2c_smbus_read_word_data(new_client, 5) != os
   || i2c_smbus_read_word_data(new_client, 6) != os
   || i2c_smbus_read_word_data(new_client, 7) != os)
   return -ENODEV;


  if (conf & 0xe0)
   return -ENODEV;


  for (i = 8; i < 0xff; i += 8)
   if (i2c_smbus_read_byte_data(new_client, i + 1) != conf
    || i2c_smbus_read_word_data(new_client, i + 2) != hyst
    || i2c_smbus_read_word_data(new_client, i + 3) != os)
    return -ENODEV;
 }




 strlcpy(info->type, "lm75", I2C_NAME_SIZE);

 return 0;
}
