
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int SMSC47M192_REG_CONFIG ;
 int SMSC47M192_REG_IN_MAX (int) ;
 int SMSC47M192_REG_IN_MIN (int) ;
 int SMSC47M192_REG_SFR ;
 int * SMSC47M192_REG_TEMP_MAX ;
 int * SMSC47M192_REG_TEMP_MIN ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void smsc47m192_init_client(struct i2c_client *client)
{
 int i;
 u8 config = i2c_smbus_read_byte_data(client, SMSC47M192_REG_CONFIG);
 u8 sfr = i2c_smbus_read_byte_data(client, SMSC47M192_REG_SFR);


 i2c_smbus_write_byte_data(client, SMSC47M192_REG_SFR,
      (sfr & 0xfd) | 0x02);
 if (!(config & 0x01)) {

  for (i=0; i<8; i++) {
   i2c_smbus_write_byte_data(client,
    SMSC47M192_REG_IN_MIN(i), 0);
   i2c_smbus_write_byte_data(client,
    SMSC47M192_REG_IN_MAX(i), 0xff);
  }
  for (i=0; i<3; i++) {
   i2c_smbus_write_byte_data(client,
    SMSC47M192_REG_TEMP_MIN[i], 0x80);
   i2c_smbus_write_byte_data(client,
    SMSC47M192_REG_TEMP_MAX[i], 0x7f);
  }


  i2c_smbus_write_byte_data(client, SMSC47M192_REG_CONFIG,
      (config & 0xf7) | 0x01);
 }
}
