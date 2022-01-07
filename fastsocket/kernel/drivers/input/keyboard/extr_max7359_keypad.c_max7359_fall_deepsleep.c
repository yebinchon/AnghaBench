
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int MAX7359_AUTOSLEEP_8192 ;
 int MAX7359_REG_SLEEP ;
 int max7359_write_reg (struct i2c_client*,int ,int ) ;

__attribute__((used)) static inline void max7359_fall_deepsleep(struct i2c_client *client)
{
 max7359_write_reg(client, MAX7359_REG_SLEEP, MAX7359_AUTOSLEEP_8192);
}
