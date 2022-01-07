
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* mdmreg; int carrierwait; } ;
struct TYPE_9__ {scalar_t__ dialing; TYPE_1__ emu; } ;
typedef TYPE_3__ modem_info ;
struct TYPE_8__ {TYPE_3__* info; } ;
struct TYPE_10__ {TYPE_2__ mdm; } ;


 int ISDN_MAX_CHANNELS ;
 int ISDN_TIMER_CARRIER ;
 size_t REG_WAITC ;
 int RESULT_NO_CARRIER ;
 TYPE_6__* dev ;
 int isdn_timer_ctrl (int ,int) ;
 int isdn_tty_modem_hup (TYPE_3__*,int) ;
 int isdn_tty_modem_result (int ,TYPE_3__*) ;

void
isdn_tty_carrier_timeout(void)
{
 int ton = 0;
 int i;

 for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
  modem_info *info = &dev->mdm.info[i];
  if (info->dialing) {
   if (info->emu.carrierwait++ > info->emu.mdmreg[REG_WAITC]) {
    info->dialing = 0;
    isdn_tty_modem_result(RESULT_NO_CARRIER, info);
    isdn_tty_modem_hup(info, 1);
   }
   else
    ton = 1;
  }
 }
 isdn_timer_ctrl(ISDN_TIMER_CARRIER, ton);
}
