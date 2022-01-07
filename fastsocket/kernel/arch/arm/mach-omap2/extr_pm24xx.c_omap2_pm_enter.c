
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;


 int omap2_pm_suspend () ;

__attribute__((used)) static int omap2_pm_enter(suspend_state_t state)
{
 int ret = 0;

 switch (state) {
 case 128:
 case 129:
  ret = omap2_pm_suspend();
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
