
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int SYS_CNTRL_M20 ;
 int SYS_COUNTER_CNTRL ;
 int SYS_TOYMATCH2 ;
 int SYS_TOYREAD ;
 int SYS_WAKEMSK ;
 int SYS_WAKESRC ;
 int alchemy_gpio1_input_enable () ;
 int au_readl (int ) ;
 int au_sleep () ;
 int au_sync () ;
 int au_writel (scalar_t__,int ) ;
 scalar_t__ db1x_pm_sleep_secs ;
 scalar_t__ db1x_pm_wakemsk ;

__attribute__((used)) static int db1x_pm_enter(suspend_state_t state)
{

 alchemy_gpio1_input_enable();


 au_writel(0, SYS_WAKEMSK);
 au_sync();
 au_writel(0, SYS_WAKESRC);
 au_sync();

 au_writel(db1x_pm_wakemsk, SYS_WAKEMSK);
 au_sync();


 while (au_readl(SYS_COUNTER_CNTRL) & SYS_CNTRL_M20)
  asm volatile ("nop");

 au_writel(au_readl(SYS_TOYREAD) + db1x_pm_sleep_secs, SYS_TOYMATCH2);
 au_sync();


 while (au_readl(SYS_COUNTER_CNTRL) & SYS_CNTRL_M20)
  asm volatile ("nop");


 au_sleep();

 return 0;
}
