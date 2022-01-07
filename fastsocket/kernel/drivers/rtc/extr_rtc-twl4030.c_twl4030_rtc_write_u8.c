
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL4030_MODULE_RTC ;
 int pr_err (char*,int ,int) ;
 int twl4030_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_rtc_write_u8(u8 data, u8 reg)
{
 int ret;

 ret = twl4030_i2c_write_u8(TWL4030_MODULE_RTC, data, reg);
 if (ret < 0)
  pr_err("twl4030_rtc: Could not write TWL4030"
         "register %X - error %d\n", reg, ret);
 return ret;
}
