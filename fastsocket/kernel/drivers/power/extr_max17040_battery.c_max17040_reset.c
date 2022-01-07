
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int MAX17040_CMD_LSB ;
 int MAX17040_CMD_MSB ;
 int max17040_write_reg (struct i2c_client*,int ,int) ;

__attribute__((used)) static void max17040_reset(struct i2c_client *client)
{
 max17040_write_reg(client, MAX17040_CMD_MSB, 0x54);
 max17040_write_reg(client, MAX17040_CMD_LSB, 0x00);
}
