
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int FAN_CTRL_DC_MODE ;

__attribute__((used)) static inline int pwm_mode_from_reg(u8 reg)
{
 return !(reg & FAN_CTRL_DC_MODE);
}
