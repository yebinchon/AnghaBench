
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTO_TEMP_MIN_FROM_REG (int) ;

__attribute__((used)) static int AUTO_TEMP_MAX_TO_REG(int val, int reg, int pwm)
{
 int ret;
 int range = val - AUTO_TEMP_MIN_FROM_REG(reg);

 range = ((val - AUTO_TEMP_MIN_FROM_REG(reg))*10)/(16 - pwm);
 ret = ((reg & 0xf8) |
        (range < 10000 ? 0 :
  range < 20000 ? 1 :
  range < 40000 ? 2 : range < 80000 ? 3 : 4));
 return ret;
}
