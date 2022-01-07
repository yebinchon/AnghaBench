
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ADM1021_REG_CONFIG_R ;
 int ADM1021_REG_CONFIG_W ;
 int ADM1021_REG_CONV_RATE_W ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void adm1021_init_client(struct i2c_client *client)
{

 i2c_smbus_write_byte_data(client, ADM1021_REG_CONFIG_W,
  i2c_smbus_read_byte_data(client, ADM1021_REG_CONFIG_R) & 0xBF);

 i2c_smbus_write_byte_data(client, ADM1021_REG_CONV_RATE_W, 0x04);
}
