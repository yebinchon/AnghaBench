
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; int cmd; int cnt; int member_0; } ;
typedef TYPE_1__ reg_timer_rw_wd_ctrl ;


 int ETRAX_WD_CNT ;
 int ETRAX_WD_KEY_MASK ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int regi_timer0 ;
 int regk_timer_stop ;
 int rw_wd_ctrl ;
 int timer ;
 int watchdog_key ;

void
stop_watchdog(void)
{
}
