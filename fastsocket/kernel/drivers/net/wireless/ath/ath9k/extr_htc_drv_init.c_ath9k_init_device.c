
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ieee80211_hw {int wiphy; } ;
struct ath_regulatory {int alpha2; } ;
struct ath_hw {int dummy; } ;
struct ath_common {struct ath_regulatory regulatory; } ;
struct TYPE_2__ {int default_trigger; } ;
struct ath9k_htc_priv {struct ath_hw* ah; int data_vo_ep; int data_vi_ep; int data_bk_ep; int data_be_ep; int mgmt_ep; int uapsd_ep; int cab_ep; int beacon_ep; int wmi_cmd_ep; struct ieee80211_hw* hw; TYPE_1__ led_cdev; } ;
typedef int hw_name ;


 int ARRAY_SIZE (int ) ;
 int CONFIG ;
 int IEEE80211_TPT_LEDTRIG_FL_RADIO ;
 int ath9k_deinit_priv (struct ath9k_htc_priv*) ;
 int ath9k_htc_init_debug (struct ath_hw*) ;
 int ath9k_htc_tpt_blink ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_disable (struct ath_hw*) ;
 int ath9k_hw_name (struct ath_hw*,char*,int) ;
 int ath9k_init_firmware_version (struct ath9k_htc_priv*) ;
 int ath9k_init_leds (struct ath9k_htc_priv*) ;
 int ath9k_init_priv (struct ath9k_htc_priv*,int ,char*,int ) ;
 int ath9k_reg_notifier ;
 int ath9k_rx_cleanup (struct ath9k_htc_priv*) ;
 int ath9k_rx_init (struct ath9k_htc_priv*) ;
 int ath9k_set_hw_capab (struct ath9k_htc_priv*,struct ieee80211_hw*) ;
 int ath9k_start_rfkill_poll (struct ath9k_htc_priv*) ;
 int ath9k_tx_cleanup (struct ath9k_htc_priv*) ;
 int ath9k_tx_init (struct ath9k_htc_priv*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ath_err (struct ath_common*,char*) ;
 int ath_is_world_regd (struct ath_regulatory*) ;
 int ath_regd_init (struct ath_regulatory*,int ,int ) ;
 int ieee80211_create_tpt_led_trigger (struct ieee80211_hw*,int ,int ,int ) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int regulatory_hint (int ,int ) ;
 int wiphy_info (int ,char*,char*) ;

__attribute__((used)) static int ath9k_init_device(struct ath9k_htc_priv *priv,
        u16 devid, char *product, u32 drv_info)
{
 struct ieee80211_hw *hw = priv->hw;
 struct ath_common *common;
 struct ath_hw *ah;
 int error = 0;
 struct ath_regulatory *reg;
 char hw_name[64];


 error = ath9k_init_priv(priv, devid, product, drv_info);
 if (error != 0)
  goto err_init;

 ah = priv->ah;
 common = ath9k_hw_common(ah);
 ath9k_set_hw_capab(priv, hw);

 error = ath9k_init_firmware_version(priv);
 if (error != 0)
  goto err_fw;


 error = ath_regd_init(&common->regulatory, priv->hw->wiphy,
         ath9k_reg_notifier);
 if (error)
  goto err_regd;

 reg = &common->regulatory;


 error = ath9k_tx_init(priv);
 if (error != 0)
  goto err_tx;


 error = ath9k_rx_init(priv);
 if (error != 0)
  goto err_rx;

 ath9k_hw_disable(priv->ah);
 error = ieee80211_register_hw(hw);
 if (error)
  goto err_register;


 if (!ath_is_world_regd(reg)) {
  error = regulatory_hint(hw->wiphy, reg->alpha2);
  if (error)
   goto err_world;
 }

 error = ath9k_htc_init_debug(priv->ah);
 if (error) {
  ath_err(common, "Unable to create debugfs files\n");
  goto err_world;
 }

 ath_dbg(common, CONFIG,
  "WMI:%d, BCN:%d, CAB:%d, UAPSD:%d, MGMT:%d, BE:%d, BK:%d, VI:%d, VO:%d\n",
  priv->wmi_cmd_ep,
  priv->beacon_ep,
  priv->cab_ep,
  priv->uapsd_ep,
  priv->mgmt_ep,
  priv->data_be_ep,
  priv->data_bk_ep,
  priv->data_vi_ep,
  priv->data_vo_ep);

 ath9k_hw_name(priv->ah, hw_name, sizeof(hw_name));
 wiphy_info(hw->wiphy, "%s\n", hw_name);

 ath9k_init_leds(priv);
 ath9k_start_rfkill_poll(priv);

 return 0;

err_world:
 ieee80211_unregister_hw(hw);
err_register:
 ath9k_rx_cleanup(priv);
err_rx:
 ath9k_tx_cleanup(priv);
err_tx:

err_regd:

err_fw:
 ath9k_deinit_priv(priv);
err_init:
 return error;
}
