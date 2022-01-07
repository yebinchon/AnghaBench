
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct il_rxon_cmd {int filter_flags; } ;
struct TYPE_5__ {int filter_flags; } ;
struct TYPE_4__ {scalar_t__ is_valid; } ;
struct il_priv {int restart; int workqueue; int wait_command_queue; int status; TYPE_3__* ops; TYPE_2__ staging; int active; int active_rate; int hw; TYPE_1__ card_alive; } ;
struct TYPE_6__ {int (* set_rxon_chain ) (struct il_priv*) ;} ;


 int D_INFO (char*) ;
 int IL_WARN (char*,int) ;
 int RATES_MASK ;
 int RXON_FILTER_ASSOC_MSK ;
 int S_ALIVE ;
 int S_READY ;
 scalar_t__ UCODE_VALID_OK ;
 int ieee80211_wake_queues (int ) ;
 int il4965_alive_notify (struct il_priv*) ;
 int il4965_reset_run_time_calib (struct il_priv*) ;
 int il4965_rf_kill_ct_config (struct il_priv*) ;
 scalar_t__ il4965_verify_ucode (struct il_priv*) ;
 int il_commit_rxon (struct il_priv*) ;
 int il_connection_init_rx_config (struct il_priv*) ;
 scalar_t__ il_is_associated (struct il_priv*) ;
 scalar_t__ il_is_rfkill (struct il_priv*) ;
 int il_power_update_mode (struct il_priv*,int) ;
 int il_send_bt_config (struct il_priv*) ;
 int il_setup_watchdog (struct il_priv*) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct il_priv*) ;
 int wake_up (int *) ;

__attribute__((used)) static void
il4965_alive_start(struct il_priv *il)
{
 int ret = 0;

 D_INFO("Runtime Alive received.\n");

 if (il->card_alive.is_valid != UCODE_VALID_OK) {


  D_INFO("Alive failed.\n");
  goto restart;
 }




 if (il4965_verify_ucode(il)) {


  D_INFO("Bad runtime uCode load.\n");
  goto restart;
 }

 ret = il4965_alive_notify(il);
 if (ret) {
  IL_WARN("Could not complete ALIVE transition [ntf]: %d\n", ret);
  goto restart;
 }


 set_bit(S_ALIVE, &il->status);


 il_setup_watchdog(il);

 if (il_is_rfkill(il))
  return;

 ieee80211_wake_queues(il->hw);

 il->active_rate = RATES_MASK;

 il_power_update_mode(il, 1);
 D_INFO("Updated power mode\n");

 if (il_is_associated(il)) {
  struct il_rxon_cmd *active_rxon =
      (struct il_rxon_cmd *)&il->active;

  il->staging.filter_flags |= RXON_FILTER_ASSOC_MSK;
  active_rxon->filter_flags &= ~RXON_FILTER_ASSOC_MSK;
 } else {

  il_connection_init_rx_config(il);

  if (il->ops->set_rxon_chain)
   il->ops->set_rxon_chain(il);
 }


 il_send_bt_config(il);

 il4965_reset_run_time_calib(il);

 set_bit(S_READY, &il->status);


 il_commit_rxon(il);


 il4965_rf_kill_ct_config(il);

 D_INFO("ALIVE processing complete.\n");
 wake_up(&il->wait_command_queue);

 return;

restart:
 queue_work(il->workqueue, &il->restart);
}
