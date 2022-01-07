
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int filter_flags; } ;
struct TYPE_3__ {scalar_t__ is_valid; } ;
struct il_priv {int restart; int workqueue; int wait_command_queue; int status; TYPE_2__ staging; int active; int active_rate; int hw; TYPE_1__ card_alive; } ;
struct il3945_rxon_cmd {int filter_flags; } ;


 int APMG_RFKILL_REG ;
 int D_INFO (char*,...) ;
 int RATES_MASK_3945 ;
 int RXON_FILTER_ASSOC_MSK ;
 int S_ALIVE ;
 int S_READY ;
 int S_RFKILL ;
 scalar_t__ UCODE_VALID_OK ;
 int clear_bit (int ,int *) ;
 int ieee80211_wake_queues (int ) ;
 int il3945_commit_rxon (struct il_priv*) ;
 scalar_t__ il3945_hw_get_temperature (struct il_priv*) ;
 int il3945_reg_txpower_periodic (struct il_priv*) ;
 scalar_t__ il3945_verify_ucode (struct il_priv*) ;
 int il_connection_init_rx_config (struct il_priv*) ;
 scalar_t__ il_is_associated (struct il_priv*) ;
 scalar_t__ il_is_rfkill (struct il_priv*) ;
 int il_power_update_mode (struct il_priv*,int) ;
 int il_rd_prph (struct il_priv*,int ) ;
 int il_send_bt_config (struct il_priv*) ;
 int il_setup_watchdog (struct il_priv*) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int udelay (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void
il3945_alive_start(struct il_priv *il)
{
 int thermal_spin = 0;
 u32 rfkill;

 D_INFO("Runtime Alive received.\n");

 if (il->card_alive.is_valid != UCODE_VALID_OK) {


  D_INFO("Alive failed.\n");
  goto restart;
 }




 if (il3945_verify_ucode(il)) {


  D_INFO("Bad runtime uCode load.\n");
  goto restart;
 }

 rfkill = il_rd_prph(il, APMG_RFKILL_REG);
 D_INFO("RFKILL status: 0x%x\n", rfkill);

 if (rfkill & 0x1) {
  clear_bit(S_RFKILL, &il->status);


  while (il3945_hw_get_temperature(il) == 0) {
   thermal_spin++;
   udelay(10);
  }

  if (thermal_spin)
   D_INFO("Thermal calibration took %dus\n",
          thermal_spin * 10);
 } else
  set_bit(S_RFKILL, &il->status);


 set_bit(S_ALIVE, &il->status);


 il_setup_watchdog(il);

 if (il_is_rfkill(il))
  return;

 ieee80211_wake_queues(il->hw);

 il->active_rate = RATES_MASK_3945;

 il_power_update_mode(il, 1);

 if (il_is_associated(il)) {
  struct il3945_rxon_cmd *active_rxon =
      (struct il3945_rxon_cmd *)(&il->active);

  il->staging.filter_flags |= RXON_FILTER_ASSOC_MSK;
  active_rxon->filter_flags &= ~RXON_FILTER_ASSOC_MSK;
 } else {

  il_connection_init_rx_config(il);
 }


 il_send_bt_config(il);

 set_bit(S_READY, &il->status);


 il3945_commit_rxon(il);

 il3945_reg_txpower_periodic(il);

 D_INFO("ALIVE processing complete.\n");
 wake_up(&il->wait_command_queue);

 return;

restart:
 queue_work(il->workqueue, &il->restart);
}
