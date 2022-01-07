
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
struct asb100_data {int lock; struct i2c_client** lm75; } ;


 int ASB100_REG_BANK ;
 struct asb100_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int i2c_smbus_write_word_data (struct i2c_client*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int swab16 (int) ;

__attribute__((used)) static void asb100_write_value(struct i2c_client *client, u16 reg, u16 value)
{
 struct asb100_data *data = i2c_get_clientdata(client);
 struct i2c_client *cl;
 int bank;

 mutex_lock(&data->lock);

 bank = (reg >> 8) & 0x0f;
 if (bank > 2)

  i2c_smbus_write_byte_data(client, ASB100_REG_BANK, bank);

 if (bank == 0 || bank > 2) {
  i2c_smbus_write_byte_data(client, reg & 0xff, value & 0xff);
 } else {

  cl = data->lm75[bank - 1];


  switch (reg & 0xff) {
  case 0x52:
   i2c_smbus_write_byte_data(cl, 1, value & 0xff);
   break;
  case 0x53:
   i2c_smbus_write_word_data(cl, 2, swab16(value));
   break;
  case 0x55:
   i2c_smbus_write_word_data(cl, 3, swab16(value));
   break;
  }
 }

 if (bank > 2)
  i2c_smbus_write_byte_data(client, ASB100_REG_BANK, 0);

 mutex_unlock(&data->lock);
}
