
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* lm93_pwm_freq_map ;

__attribute__((used)) static int LM93_PWM_FREQ_FROM_REG(u8 reg)
{
 return lm93_pwm_freq_map[reg & 0x07];
}
