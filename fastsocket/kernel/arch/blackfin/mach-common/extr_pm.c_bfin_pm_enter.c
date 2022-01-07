
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;


 int bfin_pm_suspend_mem_enter () ;
 int bfin_pm_suspend_standby_enter () ;

__attribute__((used)) static int bfin_pm_enter(suspend_state_t state)
{
 switch (state) {
 case 128:
  bfin_pm_suspend_standby_enter();
  break;
 case 129:
  bfin_pm_suspend_mem_enter();
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
