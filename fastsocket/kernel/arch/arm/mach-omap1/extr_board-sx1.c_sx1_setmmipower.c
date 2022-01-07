
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int SOFIA_I2C_ADDR ;
 scalar_t__ SOFIA_MMILIGHT_POWER ;
 int SOFIA_POWER1_REG ;
 int sx1_i2c_read_byte (int ,int ,scalar_t__*) ;
 int sx1_i2c_write_byte (int ,int ,scalar_t__) ;

int sx1_setmmipower(u8 onoff)
{
 int err;
 u8 dat = 0;
 err = sx1_i2c_read_byte(SOFIA_I2C_ADDR, SOFIA_POWER1_REG, &dat);
 if (err < 0)
  return err;
 if (onoff)
  dat |= SOFIA_MMILIGHT_POWER;
 else
  dat &= ~SOFIA_MMILIGHT_POWER;
 return sx1_i2c_write_byte(SOFIA_I2C_ADDR, SOFIA_POWER1_REG, dat);
}
