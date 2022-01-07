
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int twl4030_i2c_read (int ,int *,int ,int) ;

int twl4030_i2c_read_u8(u8 mod_no, u8 *value, u8 reg)
{
 return twl4030_i2c_read(mod_no, value, reg, 1);
}
