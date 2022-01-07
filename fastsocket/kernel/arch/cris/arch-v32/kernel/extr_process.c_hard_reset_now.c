
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; int cnt; int cmd; int member_0; } ;
typedef TYPE_1__ reg_timer_rw_wd_ctrl ;


 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int arch_enable_nmi () ;
 int local_irq_disable () ;
 int printk (char*) ;
 int regi_timer0 ;
 int regk_timer_start ;
 int rw_wd_ctrl ;
 int stop_watchdog () ;
 int timer ;

void
hard_reset_now(void)
{
 printk("*** HARD RESET ***\n");
 local_irq_disable();




{
 reg_timer_rw_wd_ctrl wd_ctrl = {0};

 stop_watchdog();

 wd_ctrl.key = 16;
 wd_ctrl.cnt = 1;
 wd_ctrl.cmd = regk_timer_start;

        arch_enable_nmi();
 REG_WR(timer, regi_timer0, rw_wd_ctrl, wd_ctrl);
}


 while (1)
  ;
}
