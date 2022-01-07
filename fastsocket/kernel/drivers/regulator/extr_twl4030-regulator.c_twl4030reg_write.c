
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twlreg_info {unsigned int base; } ;


 int TWL4030_MODULE_PM_RECEIVER ;
 int twl4030_i2c_write_u8 (int ,int ,unsigned int) ;

__attribute__((used)) static inline int
twl4030reg_write(struct twlreg_info *info, unsigned offset, u8 value)
{
 return twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER,
   value, info->base + offset);
}
