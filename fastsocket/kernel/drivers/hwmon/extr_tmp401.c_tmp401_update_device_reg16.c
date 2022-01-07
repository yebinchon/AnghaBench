
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp401_data {int* temp; int* temp_low; int* temp_high; int* temp_crit; scalar_t__ kind; int* temp_lowest; int* temp_highest; } ;
struct i2c_client {int dummy; } ;


 int * TMP401_TEMP_CRIT_LIMIT ;
 int * TMP401_TEMP_HIGH_LIMIT_LSB ;
 int * TMP401_TEMP_HIGH_LIMIT_MSB_READ ;
 int * TMP401_TEMP_LOW_LIMIT_LSB ;
 int * TMP401_TEMP_LOW_LIMIT_MSB_READ ;
 int * TMP401_TEMP_LSB ;
 int * TMP401_TEMP_MSB ;
 int * TMP411_TEMP_HIGHEST_LSB ;
 int * TMP411_TEMP_HIGHEST_MSB ;
 int * TMP411_TEMP_LOWEST_LSB ;
 int * TMP411_TEMP_LOWEST_MSB ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ tmp411 ;

__attribute__((used)) static struct tmp401_data *tmp401_update_device_reg16(
 struct i2c_client *client, struct tmp401_data *data)
{
 int i;

 for (i = 0; i < 2; i++) {




  data->temp[i] = i2c_smbus_read_byte_data(client,
   TMP401_TEMP_MSB[i]) << 8;
  data->temp[i] |= i2c_smbus_read_byte_data(client,
   TMP401_TEMP_LSB[i]);
  data->temp_low[i] = i2c_smbus_read_byte_data(client,
   TMP401_TEMP_LOW_LIMIT_MSB_READ[i]) << 8;
  data->temp_low[i] |= i2c_smbus_read_byte_data(client,
   TMP401_TEMP_LOW_LIMIT_LSB[i]);
  data->temp_high[i] = i2c_smbus_read_byte_data(client,
   TMP401_TEMP_HIGH_LIMIT_MSB_READ[i]) << 8;
  data->temp_high[i] |= i2c_smbus_read_byte_data(client,
   TMP401_TEMP_HIGH_LIMIT_LSB[i]);
  data->temp_crit[i] = i2c_smbus_read_byte_data(client,
   TMP401_TEMP_CRIT_LIMIT[i]);

  if (data->kind == tmp411) {
   data->temp_lowest[i] = i2c_smbus_read_byte_data(client,
    TMP411_TEMP_LOWEST_MSB[i]) << 8;
   data->temp_lowest[i] |= i2c_smbus_read_byte_data(
    client, TMP411_TEMP_LOWEST_LSB[i]);

   data->temp_highest[i] = i2c_smbus_read_byte_data(
    client, TMP411_TEMP_HIGHEST_MSB[i]) << 8;
   data->temp_highest[i] |= i2c_smbus_read_byte_data(
    client, TMP411_TEMP_HIGHEST_LSB[i]);
  }
 }
 return data;
}
