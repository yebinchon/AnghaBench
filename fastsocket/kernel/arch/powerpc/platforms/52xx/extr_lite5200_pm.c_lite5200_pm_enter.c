
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;


 scalar_t__ PM_SUSPEND_STANDBY ;
 int enable_kernel_fp () ;
 int iounmap (int ) ;
 int lite5200_low_power (int ,int ) ;
 int lite5200_restore_regs () ;
 int lite5200_save_regs () ;
 int mbar ;
 int mpc52xx_pm_enter (scalar_t__) ;
 int sram ;
 int wakeup_decrementer () ;

__attribute__((used)) static int lite5200_pm_enter(suspend_state_t state)
{

 if (state == PM_SUSPEND_STANDBY) {
  return mpc52xx_pm_enter(state);
 }

 lite5200_save_regs();


 enable_kernel_fp();

 lite5200_low_power(sram, mbar);

 lite5200_restore_regs();


 wakeup_decrementer();

 iounmap(mbar);
 return 0;
}
