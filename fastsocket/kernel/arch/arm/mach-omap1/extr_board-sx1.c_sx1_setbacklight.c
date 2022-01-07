
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int SOFIA_BACKLIGHT_REG ;
 int SOFIA_I2C_ADDR ;
 scalar_t__ SOFIA_MAX_LIGHT_VAL ;
 int sx1_i2c_write_byte (int ,int ,scalar_t__) ;

int sx1_setbacklight(u8 backlight)
{
 if (backlight > SOFIA_MAX_LIGHT_VAL)
  backlight = SOFIA_MAX_LIGHT_VAL;
 return sx1_i2c_write_byte(SOFIA_I2C_ADDR, SOFIA_BACKLIGHT_REG,
      backlight);
}
