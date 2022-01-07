
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int twl4030_i2c_write (int ,int *,int ,int) ;

int twl4030_i2c_write_u8(u8 mod_no, u8 value, u8 reg)
{


 u8 temp_buffer[2] = { 0 };

 temp_buffer[1] = value;
 return twl4030_i2c_write(mod_no, temp_buffer, reg, 1);
}
