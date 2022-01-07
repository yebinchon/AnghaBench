
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int LM80_REG_CONFIG ;
 int LM80_REG_RES ;
 int lm80_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm80_init_client(struct i2c_client *client)
{



 lm80_write_value(client, LM80_REG_CONFIG, 0x80);

 lm80_write_value(client, LM80_REG_RES, 0x08);


 lm80_write_value(client, LM80_REG_CONFIG, 0x01);
}
