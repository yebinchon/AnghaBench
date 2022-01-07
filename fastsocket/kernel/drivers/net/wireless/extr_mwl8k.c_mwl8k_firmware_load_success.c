
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mwl8k_vif {int dummy; } ;
struct mwl8k_sta {int dummy; } ;
struct mwl8k_priv {int radio_on; int radio_short_preamble; int cookie_dma; int * cookie; int pdev; TYPE_1__* device_info; scalar_t__ sta_macids_supported; scalar_t__ ap_macids_supported; int * tx_wait; int stream_lock; int tx_lock; int * hostcmd_wait; scalar_t__ fw_mutex_depth; int * fw_mutex_owner; int fw_mutex; int poll_rx_task; int poll_tx_task; int fw_reload; int watchdog_ba_handle; int finalize_join_worker; int vif_list; scalar_t__ macids_used; scalar_t__ ap_fw; struct ieee80211_hw* hw; } ;
struct mwl8k_dma_data {int dummy; } ;
struct ieee80211_hw {int extra_tx_headroom; int channel_change_time; int flags; int vif_data_size; int sta_data_size; TYPE_2__* wiphy; int queues; } ;
struct ieee80211_cts {int dummy; } ;
struct TYPE_4__ {int n_iface_combinations; int interface_modes; int * iface_combinations; } ;
struct TYPE_3__ {scalar_t__ fw_image_sta; scalar_t__ fw_image_ap; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int IEEE80211_HW_AP_LINK_PS ;
 int IEEE80211_HW_HAS_RATE_CONTROL ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MWL8K_TX_WMM_QUEUES ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_STATION ;
 int REDUCED_TX_HEADROOM ;
 int ap_if_comb ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int mutex_init (int *) ;
 int mwl8k_finalize_join_worker ;
 int mwl8k_hw_restart_work ;
 int mwl8k_load_firmware (struct ieee80211_hw*) ;
 int mwl8k_probe_hw (struct ieee80211_hw*) ;
 int mwl8k_release_firmware (struct mwl8k_priv*) ;
 int mwl8k_rx_poll ;
 int mwl8k_rxq_deinit (struct ieee80211_hw*,int ) ;
 int mwl8k_tx_poll ;
 int mwl8k_tx_queues (struct mwl8k_priv*) ;
 int mwl8k_txq_deinit (struct ieee80211_hw*,int) ;
 int mwl8k_watchdog_ba_events ;
 int * pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int spin_lock_init (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int wiphy_err (TYPE_2__*,char*) ;

__attribute__((used)) static int mwl8k_firmware_load_success(struct mwl8k_priv *priv)
{
 struct ieee80211_hw *hw = priv->hw;
 int i, rc;

 rc = mwl8k_load_firmware(hw);
 mwl8k_release_firmware(priv);
 if (rc) {
  wiphy_err(hw->wiphy, "Cannot start firmware\n");
  return rc;
 }





 hw->extra_tx_headroom =
  sizeof(struct mwl8k_dma_data) - sizeof(struct ieee80211_cts);

 hw->extra_tx_headroom -= priv->ap_fw ? REDUCED_TX_HEADROOM : 0;

 hw->channel_change_time = 10;

 hw->queues = MWL8K_TX_WMM_QUEUES;


 hw->flags |= IEEE80211_HW_SIGNAL_DBM | IEEE80211_HW_HAS_RATE_CONTROL;





 if (priv->ap_fw)
  hw->flags |= IEEE80211_HW_AP_LINK_PS;

 hw->vif_data_size = sizeof(struct mwl8k_vif);
 hw->sta_data_size = sizeof(struct mwl8k_sta);

 priv->macids_used = 0;
 INIT_LIST_HEAD(&priv->vif_list);


 priv->radio_on = 0;
 priv->radio_short_preamble = 0;


 INIT_WORK(&priv->finalize_join_worker, mwl8k_finalize_join_worker);

 INIT_WORK(&priv->watchdog_ba_handle, mwl8k_watchdog_ba_events);

 INIT_WORK(&priv->fw_reload, mwl8k_hw_restart_work);


 tasklet_init(&priv->poll_tx_task, mwl8k_tx_poll, (unsigned long)hw);
 tasklet_disable(&priv->poll_tx_task);
 tasklet_init(&priv->poll_rx_task, mwl8k_rx_poll, (unsigned long)hw);
 tasklet_disable(&priv->poll_rx_task);


 priv->cookie = pci_alloc_consistent(priv->pdev, 4, &priv->cookie_dma);
 if (priv->cookie == ((void*)0))
  return -ENOMEM;

 mutex_init(&priv->fw_mutex);
 priv->fw_mutex_owner = ((void*)0);
 priv->fw_mutex_depth = 0;
 priv->hostcmd_wait = ((void*)0);

 spin_lock_init(&priv->tx_lock);

 spin_lock_init(&priv->stream_lock);

 priv->tx_wait = ((void*)0);

 rc = mwl8k_probe_hw(hw);
 if (rc)
  goto err_free_cookie;

 hw->wiphy->interface_modes = 0;

 if (priv->ap_macids_supported || priv->device_info->fw_image_ap) {
  hw->wiphy->interface_modes |= BIT(NL80211_IFTYPE_AP);
  hw->wiphy->interface_modes |= BIT(NL80211_IFTYPE_STATION);
  hw->wiphy->iface_combinations = &ap_if_comb;
  hw->wiphy->n_iface_combinations = 1;
 }

 if (priv->sta_macids_supported || priv->device_info->fw_image_sta)
  hw->wiphy->interface_modes |= BIT(NL80211_IFTYPE_STATION);

 rc = ieee80211_register_hw(hw);
 if (rc) {
  wiphy_err(hw->wiphy, "Cannot register device\n");
  goto err_unprobe_hw;
 }

 return 0;

err_unprobe_hw:
 for (i = 0; i < mwl8k_tx_queues(priv); i++)
  mwl8k_txq_deinit(hw, i);
 mwl8k_rxq_deinit(hw, 0);

err_free_cookie:
 if (priv->cookie != ((void*)0))
  pci_free_consistent(priv->pdev, 4,
    priv->cookie, priv->cookie_dma);

 return rc;
}
