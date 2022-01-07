
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pluscount; scalar_t__ lastplus; } ;
struct TYPE_8__ {scalar_t__ online; TYPE_2__ emu; } ;
typedef TYPE_3__ modem_info ;
struct TYPE_6__ {TYPE_3__* info; } ;
struct TYPE_9__ {int* m_idx; TYPE_1__ mdm; int * usage; } ;


 int ISDN_MAX_CHANNELS ;
 int ISDN_TIMER_MODEMPLUS ;
 scalar_t__ PLUSWAIT2 ;
 int RESULT_OK ;
 scalar_t__ USG_MODEM (int ) ;
 TYPE_5__* dev ;
 int isdn_timer_ctrl (int ,int) ;
 int isdn_tty_modem_result (int ,TYPE_3__*) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

void
isdn_tty_modem_escape(void)
{
 int ton = 0;
 int i;
 int midx;

 for (i = 0; i < ISDN_MAX_CHANNELS; i++)
  if (USG_MODEM(dev->usage[i]))
   if ((midx = dev->m_idx[i]) >= 0) {
    modem_info *info = &dev->mdm.info[midx];
    if (info->online) {
     ton = 1;
     if ((info->emu.pluscount == 3) &&
         time_after(jiffies , info->emu.lastplus + PLUSWAIT2)) {
      info->emu.pluscount = 0;
      info->online = 0;
      isdn_tty_modem_result(RESULT_OK, info);
     }
    }
   }
 isdn_timer_ctrl(ISDN_TIMER_MODEMPLUS, ton);
}
