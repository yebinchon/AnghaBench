
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ADT7473_CFG1_READY ;
 int ADT7473_CFG1_START ;
 int ADT7473_REG_CFG1 ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void adt7473_init_client(struct i2c_client *client)
{
 int reg = i2c_smbus_read_byte_data(client, ADT7473_REG_CFG1);

 if (!(reg & ADT7473_CFG1_READY)) {
  dev_err(&client->dev, "Chip not ready.\n");
 } else {

  i2c_smbus_write_byte_data(client, ADT7473_REG_CFG1,
       reg | ADT7473_CFG1_START);
 }
}
