
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; int adapter; } ;


 int I2C_FUNC_I2C ;
 int dev_err (int *,char*,int) ;
 scalar_t__ i2c_check_functionality (int ,int ) ;
 int i2c_master_recv (struct i2c_client*,int*,unsigned int) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int) ;

__attribute__((used)) static int qt2160_read_block(struct i2c_client *client,
        u8 inireg, u8 *buffer, unsigned int count)
{
 int error, idx = 0;






 if (i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {

  error = i2c_smbus_write_byte(client, inireg + idx);
  if (error) {
   dev_err(&client->dev,
    "couldn't send request. Returned %d\n", error);
   return error;
  }

  error = i2c_master_recv(client, buffer, count);
  if (error != count) {
   dev_err(&client->dev,
    "couldn't read registers. Returned %d bytes\n", error);
   return error;
  }
 } else {

  while (count--) {
   int data;

   error = i2c_smbus_write_byte(client, inireg + idx);
   if (error) {
    dev_err(&client->dev,
     "couldn't send request. Returned %d\n", error);
    return error;
   }

   data = i2c_smbus_read_byte(client);
   if (data < 0) {
    dev_err(&client->dev,
     "couldn't read register. Returned %d\n", data);
    return data;
   }

   buffer[idx++] = data;
  }
 }

 return 0;
}
