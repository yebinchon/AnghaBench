
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t pwm_freq_t ;


 int** lm93_pwm_map ;

__attribute__((used)) static u8 LM93_PWM_TO_REG(int pwm, pwm_freq_t freq)
{
 int i;
 for (i = 0; i < 13; i++)
  if (pwm <= lm93_pwm_map[freq][i])
   break;


 return (u8)i;
}
