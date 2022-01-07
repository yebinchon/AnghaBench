
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;


 int deep_sleeping ;
 int has_deep_sleep ;

__attribute__((used)) static int mpc83xx_suspend_begin(suspend_state_t state)
{
 switch (state) {
  case 128:
   deep_sleeping = 0;
   return 0;

  case 129:
   if (has_deep_sleep)
    deep_sleeping = 1;

   return 0;

  default:
   return -EINVAL;
 }
}
