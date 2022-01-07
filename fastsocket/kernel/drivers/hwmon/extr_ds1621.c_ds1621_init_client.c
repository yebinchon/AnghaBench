
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int DS1621_COM_START ;
 int DS1621_REG_CONF ;
 int DS1621_REG_CONFIG_1SHOT ;
 int DS1621_REG_CONFIG_POLARITY ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int polarity ;

__attribute__((used)) static void ds1621_init_client(struct i2c_client *client)
{
 u8 conf, new_conf;

 new_conf = conf = i2c_smbus_read_byte_data(client, DS1621_REG_CONF);

 new_conf &= ~DS1621_REG_CONFIG_1SHOT;


 if (polarity == 0)
  new_conf &= ~DS1621_REG_CONFIG_POLARITY;
 else if (polarity == 1)
  new_conf |= DS1621_REG_CONFIG_POLARITY;

 if (conf != new_conf)
  i2c_smbus_write_byte_data(client, DS1621_REG_CONF, new_conf);


 i2c_smbus_write_byte(client, DS1621_COM_START);
}
