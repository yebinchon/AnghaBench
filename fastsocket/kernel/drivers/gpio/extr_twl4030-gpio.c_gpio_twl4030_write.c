
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL4030_MODULE_GPIO ;
 int twl4030_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static inline int gpio_twl4030_write(u8 address, u8 data)
{
 return twl4030_i2c_write_u8(TWL4030_MODULE_GPIO, data, address);
}
