
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int ADM1029_REG_CONFIG ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int adm1029_init_client(struct i2c_client *client)
{
 u8 config;
 config = i2c_smbus_read_byte_data(client, ADM1029_REG_CONFIG);
 if ((config & 0x10) == 0) {
  i2c_smbus_write_byte_data(client, ADM1029_REG_CONFIG,
       config | 0x10);
 }

 config = i2c_smbus_read_byte_data(client, ADM1029_REG_CONFIG);
 if ((config & 0x10) == 0) {
  dev_err(&client->dev, "Initialization failed!\n");
  return 0;
 }
 return 1;
}
