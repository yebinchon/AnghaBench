
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int rx8025_write_reg(struct i2c_client *client, int number, u8 value)
{
 int ret = i2c_smbus_write_byte_data(client, number << 4, value);

 if (ret)
  dev_err(&client->dev, "Unable to write register #%d\n",
   number);

 return ret;
}
