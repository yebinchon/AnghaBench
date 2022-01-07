
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ online; } ;
typedef TYPE_2__ modem_info ;
struct TYPE_6__ {TYPE_2__* info; } ;
struct TYPE_8__ {TYPE_1__ mdm; } ;


 int ISDN_MAX_CHANNELS ;
 int ISDN_TIMER_MODEMXMIT ;
 TYPE_5__* dev ;
 int isdn_timer_ctrl (int ,int) ;
 int isdn_tty_senddown (TYPE_2__*) ;
 int isdn_tty_tint (TYPE_2__*) ;

void
isdn_tty_modem_xmit(void)
{
 int ton = 1;
 int i;

 for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
  modem_info *info = &dev->mdm.info[i];
  if (info->online) {
   ton = 1;
   isdn_tty_senddown(info);
   isdn_tty_tint(info);
  }
 }
 isdn_timer_ctrl(ISDN_TIMER_MODEMXMIT, ton);
}
