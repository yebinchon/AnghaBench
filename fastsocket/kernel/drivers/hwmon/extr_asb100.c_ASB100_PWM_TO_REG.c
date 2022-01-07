
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (int,int ,int) ;

__attribute__((used)) static u8 ASB100_PWM_TO_REG(int pwm)
{
 pwm = SENSORS_LIMIT(pwm, 0, 255);
 return (u8)(pwm / 16);
}
