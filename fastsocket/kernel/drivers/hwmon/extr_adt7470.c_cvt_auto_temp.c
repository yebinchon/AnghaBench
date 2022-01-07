
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADT7470_PWM_ALL_TEMPS ;
 int EINVAL ;
 int ilog2 (int) ;
 int is_power_of_2 (int) ;

__attribute__((used)) static int cvt_auto_temp(int input)
{
 if (input == ADT7470_PWM_ALL_TEMPS)
  return 0;
 if (input < 1 || !is_power_of_2(input))
  return -EINVAL;
 return ilog2(input) + 1;
}
