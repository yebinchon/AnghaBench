
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int msr; } ;
typedef TYPE_2__ modem_info ;
struct TYPE_5__ {TYPE_2__* info; } ;
struct TYPE_7__ {TYPE_1__ mdm; } ;


 int ISDN_MAX_CHANNELS ;
 int ISDN_TIMER_MODEMRING ;
 int RESULT_RING ;
 int UART_MSR_RI ;
 TYPE_4__* dev ;
 int isdn_timer_ctrl (int ,int) ;
 int isdn_tty_modem_result (int ,TYPE_2__*) ;

void
isdn_tty_modem_ring(void)
{
 int ton = 0;
 int i;

 for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
  modem_info *info = &dev->mdm.info[i];
  if (info->msr & UART_MSR_RI) {
   ton = 1;
   isdn_tty_modem_result(RESULT_RING, info);
  }
 }
 isdn_timer_ctrl(ISDN_TIMER_MODEMRING, ton);
}
