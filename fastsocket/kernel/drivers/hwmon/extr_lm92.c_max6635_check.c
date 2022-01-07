
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 scalar_t__ LM92_REG_CONFIG ;
 scalar_t__ LM92_REG_MAN_ID ;
 scalar_t__ LM92_REG_TEMP_CRIT ;
 scalar_t__ LM92_REG_TEMP_HIGH ;
 scalar_t__ LM92_REG_TEMP_HYST ;
 scalar_t__ LM92_REG_TEMP_LOW ;
 scalar_t__ i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;
 int i2c_smbus_read_word_data (struct i2c_client*,scalar_t__) ;

__attribute__((used)) static int max6635_check(struct i2c_client *client)
{
 u16 temp_low, temp_high, temp_hyst, temp_crit;
 u8 conf;
 int i;



 temp_low = i2c_smbus_read_word_data(client, LM92_REG_TEMP_LOW);
 if (i2c_smbus_read_word_data(client, LM92_REG_MAN_ID) != temp_low)
  return 0;
 temp_high = i2c_smbus_read_word_data(client, LM92_REG_TEMP_HIGH);
 if (i2c_smbus_read_word_data(client, LM92_REG_MAN_ID) != temp_high)
  return 0;


 if ((temp_low & 0x7f00) || (temp_high & 0x7f00))
  return 0;
 temp_hyst = i2c_smbus_read_word_data(client, LM92_REG_TEMP_HYST);
 temp_crit = i2c_smbus_read_word_data(client, LM92_REG_TEMP_CRIT);
 if ((temp_hyst & 0x7f00) || (temp_crit & 0x7f00))
  return 0;





 conf = i2c_smbus_read_byte_data(client, LM92_REG_CONFIG);
 for (i=16; i<96; i*=2) {
  if (temp_hyst != i2c_smbus_read_word_data(client,
      LM92_REG_TEMP_HYST + i - 16)
   || temp_crit != i2c_smbus_read_word_data(client,
      LM92_REG_TEMP_CRIT + i)
   || temp_low != i2c_smbus_read_word_data(client,
    LM92_REG_TEMP_LOW + i + 16)
   || temp_high != i2c_smbus_read_word_data(client,
      LM92_REG_TEMP_HIGH + i + 32)
   || conf != i2c_smbus_read_byte_data(client,
        LM92_REG_CONFIG + i))
   return 0;
 }

 return 1;
}
