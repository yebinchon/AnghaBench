
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {scalar_t__ state; int reg_ch_conf_last; int * target_mem_map; int * tx_res_if; int * fw_status_2; int * fw_status_1; scalar_t__* tx_allocated_pkts; scalar_t__* tx_pkts_freed; scalar_t__ tx_blocks_freed; scalar_t__ flags; int links_map; TYPE_1__* links; scalar_t__ active_link_count; scalar_t__ active_sta_count; int session_ids; int roc_map; int roles_map; int sleep_auth; scalar_t__ ap_ps_map; scalar_t__ ap_fw_ps_map; scalar_t__ time_offset; scalar_t__ tx_packets_count; scalar_t__ tx_results_count; scalar_t__ tx_allocated_blocks; scalar_t__ tx_blocks_available; int channel_type; int power_level; scalar_t__ rx_counter; int band; int mutex; int tx_watchdog_work; int elp_work; int tx_work; int netstack_work; int scan_complete_work; int recovery_work; } ;
struct TYPE_2__ {scalar_t__ prev_freed_pkts; scalar_t__ allocated_pkts; } ;


 int IEEE80211_BAND_2GHZ ;
 int NL80211_CHAN_NO_HT ;
 int NUM_TX_QUEUES ;
 int WL1271_DEFAULT_POWER_LEVEL ;
 int WL1271_FLAG_RECOVERY_IN_PROGRESS ;
 int WL1271_PSM_ILLEGAL ;
 size_t WL12XX_SYSTEM_HLID ;
 scalar_t__ WLCORE_STATE_OFF ;
 int __set_bit (size_t,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int kfree (int *) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,scalar_t__*) ;
 int test_bit (int ,scalar_t__*) ;
 int wl1271_debugfs_reset (struct wl1271*) ;
 int wl1271_flush_deferred_work (struct wl1271*) ;
 int wl1271_power_off (struct wl1271*) ;
 int wl12xx_tx_reset (struct wl1271*) ;
 int wlcore_disable_interrupts_nosync (struct wl1271*) ;
 int wlcore_enable_interrupts (struct wl1271*) ;
 int wlcore_synchronize_interrupts (struct wl1271*) ;

__attribute__((used)) static void wlcore_op_stop_locked(struct wl1271 *wl)
{
 int i;

 if (wl->state == WLCORE_STATE_OFF) {
  if (test_and_clear_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS,
     &wl->flags))
   wlcore_enable_interrupts(wl);

  return;
 }





 wl->state = WLCORE_STATE_OFF;





 wlcore_disable_interrupts_nosync(wl);

 mutex_unlock(&wl->mutex);

 wlcore_synchronize_interrupts(wl);
 if (!test_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags))
  cancel_work_sync(&wl->recovery_work);
 wl1271_flush_deferred_work(wl);
 cancel_delayed_work_sync(&wl->scan_complete_work);
 cancel_work_sync(&wl->netstack_work);
 cancel_work_sync(&wl->tx_work);
 cancel_delayed_work_sync(&wl->elp_work);
 cancel_delayed_work_sync(&wl->tx_watchdog_work);


 mutex_lock(&wl->mutex);
 wl12xx_tx_reset(wl);

 wl1271_power_off(wl);





 if (test_and_clear_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags))
  wlcore_enable_interrupts(wl);

 wl->band = IEEE80211_BAND_2GHZ;

 wl->rx_counter = 0;
 wl->power_level = WL1271_DEFAULT_POWER_LEVEL;
 wl->channel_type = NL80211_CHAN_NO_HT;
 wl->tx_blocks_available = 0;
 wl->tx_allocated_blocks = 0;
 wl->tx_results_count = 0;
 wl->tx_packets_count = 0;
 wl->time_offset = 0;
 wl->ap_fw_ps_map = 0;
 wl->ap_ps_map = 0;
 wl->sleep_auth = WL1271_PSM_ILLEGAL;
 memset(wl->roles_map, 0, sizeof(wl->roles_map));
 memset(wl->links_map, 0, sizeof(wl->links_map));
 memset(wl->roc_map, 0, sizeof(wl->roc_map));
 memset(wl->session_ids, 0, sizeof(wl->session_ids));
 wl->active_sta_count = 0;
 wl->active_link_count = 0;


 wl->links[WL12XX_SYSTEM_HLID].allocated_pkts = 0;
 wl->links[WL12XX_SYSTEM_HLID].prev_freed_pkts = 0;
 __set_bit(WL12XX_SYSTEM_HLID, wl->links_map);






 wl->flags = 0;

 wl->tx_blocks_freed = 0;

 for (i = 0; i < NUM_TX_QUEUES; i++) {
  wl->tx_pkts_freed[i] = 0;
  wl->tx_allocated_pkts[i] = 0;
 }

 wl1271_debugfs_reset(wl);

 kfree(wl->fw_status_1);
 wl->fw_status_1 = ((void*)0);
 wl->fw_status_2 = ((void*)0);
 kfree(wl->tx_res_if);
 wl->tx_res_if = ((void*)0);
 kfree(wl->target_mem_map);
 wl->target_mem_map = ((void*)0);





 memset(wl->reg_ch_conf_last, 0, sizeof(wl->reg_ch_conf_last));
}
