
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PM_SUSPEND_STANDBY ;
 scalar_t__ lite5200_pm_target_state ;
 int mpc52xx_pm_finish () ;

__attribute__((used)) static void lite5200_pm_finish(void)
{

 if (lite5200_pm_target_state == PM_SUSPEND_STANDBY)
  mpc52xx_pm_finish();
}
