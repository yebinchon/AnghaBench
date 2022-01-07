
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_force_reset {scalar_t__ last_force_reset_jiffies; int reset_success_count; int reset_reject_count; scalar_t__ reset_duration; int reset_request_count; } ;
struct il_priv {int restart; int workqueue; int status; int wait_command_queue; TYPE_2__* cfg; struct il_force_reset force_reset; } ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int restart_fw; } ;


 int D_INFO (char*) ;
 int EAGAIN ;
 int EINVAL ;
 int IL_ERR (char*) ;
 int S_EXIT_PENDING ;
 int S_FW_ERROR ;
 int S_READY ;
 int clear_bit (int ,int *) ;
 scalar_t__ jiffies ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int wake_up (int *) ;

int
il_force_reset(struct il_priv *il, bool external)
{
 struct il_force_reset *force_reset;

 if (test_bit(S_EXIT_PENDING, &il->status))
  return -EINVAL;

 force_reset = &il->force_reset;
 force_reset->reset_request_count++;
 if (!external) {
  if (force_reset->last_force_reset_jiffies &&
      time_after(force_reset->last_force_reset_jiffies +
          force_reset->reset_duration, jiffies)) {
   D_INFO("force reset rejected\n");
   force_reset->reset_reject_count++;
   return -EAGAIN;
  }
 }
 force_reset->reset_success_count++;
 force_reset->last_force_reset_jiffies = jiffies;
 if (!external && !il->cfg->mod_params->restart_fw) {
  D_INFO("Cancel firmware reload based on "
         "module parameter setting\n");
  return 0;
 }

 IL_ERR("On demand firmware reload\n");


 set_bit(S_FW_ERROR, &il->status);
 wake_up(&il->wait_command_queue);




 clear_bit(S_READY, &il->status);
 queue_work(il->workqueue, &il->restart);

 return 0;
}
