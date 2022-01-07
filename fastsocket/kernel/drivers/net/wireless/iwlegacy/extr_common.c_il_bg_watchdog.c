
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_txq_num; } ;
struct il_priv {int cmd_queue; int watchdog; TYPE_1__ hw_params; TYPE_2__* cfg; int status; } ;
struct TYPE_4__ {unsigned long wd_timeout; } ;


 int IL_WD_TICK (unsigned long) ;
 int S_EXIT_PENDING ;
 scalar_t__ il_check_stuck_queue (struct il_priv*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void
il_bg_watchdog(unsigned long data)
{
 struct il_priv *il = (struct il_priv *)data;
 int cnt;
 unsigned long timeout;

 if (test_bit(S_EXIT_PENDING, &il->status))
  return;

 timeout = il->cfg->wd_timeout;
 if (timeout == 0)
  return;


 if (il_check_stuck_queue(il, il->cmd_queue))
  return;


 for (cnt = 0; cnt < il->hw_params.max_txq_num; cnt++) {

  if (cnt == il->cmd_queue)
   continue;
  if (il_check_stuck_queue(il, cnt))
   return;
 }

 mod_timer(&il->watchdog,
    jiffies + msecs_to_jiffies(IL_WD_TICK(timeout)));
}
