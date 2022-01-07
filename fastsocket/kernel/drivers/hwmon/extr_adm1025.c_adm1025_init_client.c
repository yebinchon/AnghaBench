
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct adm1025_data {int vrm; } ;


 int ADM1025_REG_CONFIG ;
 int ADM1025_REG_IN_MAX (int) ;
 int ADM1025_REG_TEMP_HIGH (int) ;
 struct adm1025_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int vid_which_vrm () ;

__attribute__((used)) static void adm1025_init_client(struct i2c_client *client)
{
 u8 reg;
 struct adm1025_data *data = i2c_get_clientdata(client);
 int i;

 data->vrm = vid_which_vrm();
 for (i=0; i<6; i++) {
  reg = i2c_smbus_read_byte_data(client,
            ADM1025_REG_IN_MAX(i));
  if (reg == 0)
   i2c_smbus_write_byte_data(client,
        ADM1025_REG_IN_MAX(i),
        0xFF);
 }
 for (i=0; i<2; i++) {
  reg = i2c_smbus_read_byte_data(client,
            ADM1025_REG_TEMP_HIGH(i));
  if (reg == 0)
   i2c_smbus_write_byte_data(client,
        ADM1025_REG_TEMP_HIGH(i),
        0x7F);
 }




 reg = i2c_smbus_read_byte_data(client, ADM1025_REG_CONFIG);
 if (!(reg & 0x01))
  i2c_smbus_write_byte_data(client, ADM1025_REG_CONFIG,
       (reg&0x7E)|0x01);
}
