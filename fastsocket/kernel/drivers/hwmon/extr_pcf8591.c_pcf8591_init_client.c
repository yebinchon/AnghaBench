
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8591_data {int aout; int control; } ;
struct i2c_client {int dummy; } ;


 int PCF8591_INIT_AOUT ;
 int PCF8591_INIT_CONTROL ;
 struct pcf8591_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static void pcf8591_init_client(struct i2c_client *client)
{
 struct pcf8591_data *data = i2c_get_clientdata(client);
 data->control = PCF8591_INIT_CONTROL;
 data->aout = PCF8591_INIT_AOUT;

 i2c_smbus_write_byte_data(client, data->control, data->aout);



 i2c_smbus_read_byte(client);
}
