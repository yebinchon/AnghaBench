
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_9__ {int * txq; } ;
struct TYPE_8__ {int samp_lock; } ;
struct ath_softc {TYPE_4__ tx; struct ath_hw* sc_ah; int rx_poll_timer; int hw_pll_work; int paprd_work; int hw_check_work; int hw_reset_work; int bcon_tasklet; int intr_tq; TYPE_3__ debug; int mutex; int sc_pm_lock; int sc_serial_rw; int hw; int dfs_detector; TYPE_5__* dev; } ;
struct TYPE_7__ {int rmw; int write; int read; } ;
struct TYPE_6__ {int devid; } ;
struct ath_hw {int led_pin; TYPE_2__ reg_ops; int external_reset; int get_mac_revision; int is_clk_25mhz; int gpio_val; int gpio_mask; int ah_flags; int intr_ref_cnt; TYPE_1__ hw_version; int hw; TYPE_5__* dev; } ;
struct ath_common {int btcoex_enabled; int disable_ani; int antenna_diversity; int cachelsz; struct ath_bus_ops const* bus_ops; int macaddr; int cc_lock; int debug_mask; struct ath_softc* priv; int hw; struct ath_hw* ah; TYPE_2__* ops; } ;
struct ath_bus_ops {int (* aspm_init ) (struct ath_common*) ;} ;
struct ath9k_platform_data {int led_pin; scalar_t__ macaddr; scalar_t__ eeprom_name; int external_reset; int get_mac_revision; int is_clk_25mhz; int gpio_val; int gpio_mask; } ;
struct TYPE_10__ {struct ath9k_platform_data* platform_data; } ;


 int AH_USE_EEPROM ;
 int ATH9K_NUM_TX_QUEUES ;
 scalar_t__ ATH_TXQ_SETUP (struct ath_softc*,int) ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int NL80211_DFS_UNSET ;
 int ath9k_beacon_tasklet ;
 int ath9k_btcoex_enable ;
 int ath9k_cmn_init_crypto (struct ath_hw*) ;
 int ath9k_debug ;
 int ath9k_eeprom_release (struct ath_softc*) ;
 int ath9k_eeprom_request (struct ath_softc*,scalar_t__) ;
 scalar_t__ ath9k_enable_diversity ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_deinit (struct ath_hw*) ;
 int ath9k_hw_init (struct ath_hw*) ;
 int ath9k_init_btcoex (struct ath_softc*) ;
 int ath9k_init_channels_rates (struct ath_softc*) ;
 int ath9k_init_misc (struct ath_softc*) ;
 int ath9k_init_queues (struct ath_softc*) ;
 int ath9k_ioread32 ;
 int ath9k_iowrite32 ;
 int ath9k_reg_rmw ;
 int ath9k_tasklet ;
 int ath_fill_led_pin (struct ath_softc*) ;
 int ath_hw_check ;
 int ath_hw_pll_work ;
 int ath_paprd_calibrate ;
 int ath_read_cachesize (struct ath_common*,int*) ;
 int ath_reset_work ;
 int ath_rx_poll ;
 int ath_tx_cleanupq (struct ath_softc*,int *) ;
 int atomic_set (int *,int) ;
 struct ath_hw* devm_kzalloc (TYPE_5__*,int,int ) ;
 int dfs_pattern_detector_init (struct ath_hw*,int ) ;
 int memcpy (int ,scalar_t__,int ) ;
 int mutex_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int stub1 (struct ath_common*) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int ath9k_init_softc(u16 devid, struct ath_softc *sc,
       const struct ath_bus_ops *bus_ops)
{
 struct ath9k_platform_data *pdata = sc->dev->platform_data;
 struct ath_hw *ah = ((void*)0);
 struct ath_common *common;
 int ret = 0, i;
 int csz = 0;

 ah = devm_kzalloc(sc->dev, sizeof(struct ath_hw), GFP_KERNEL);
 if (!ah)
  return -ENOMEM;

 ah->dev = sc->dev;
 ah->hw = sc->hw;
 ah->hw_version.devid = devid;
 ah->reg_ops.read = ath9k_ioread32;
 ah->reg_ops.write = ath9k_iowrite32;
 ah->reg_ops.rmw = ath9k_reg_rmw;
 atomic_set(&ah->intr_ref_cnt, -1);
 sc->sc_ah = ah;

 sc->dfs_detector = dfs_pattern_detector_init(ah, NL80211_DFS_UNSET);

 if (!pdata) {
  ah->ah_flags |= AH_USE_EEPROM;
  sc->sc_ah->led_pin = -1;
 } else {
  sc->sc_ah->gpio_mask = pdata->gpio_mask;
  sc->sc_ah->gpio_val = pdata->gpio_val;
  sc->sc_ah->led_pin = pdata->led_pin;
  ah->is_clk_25mhz = pdata->is_clk_25mhz;
  ah->get_mac_revision = pdata->get_mac_revision;
  ah->external_reset = pdata->external_reset;
 }

 common = ath9k_hw_common(ah);
 common->ops = &ah->reg_ops;
 common->bus_ops = bus_ops;
 common->ah = ah;
 common->hw = sc->hw;
 common->priv = sc;
 common->debug_mask = ath9k_debug;
 common->btcoex_enabled = ath9k_btcoex_enable == 1;
 common->disable_ani = 0;





 if (!common->btcoex_enabled && ath9k_enable_diversity)
  common->antenna_diversity = 1;

 spin_lock_init(&common->cc_lock);

 spin_lock_init(&sc->sc_serial_rw);
 spin_lock_init(&sc->sc_pm_lock);
 mutex_init(&sc->mutex);



 tasklet_init(&sc->intr_tq, ath9k_tasklet, (unsigned long)sc);
 tasklet_init(&sc->bcon_tasklet, ath9k_beacon_tasklet,
       (unsigned long)sc);

 INIT_WORK(&sc->hw_reset_work, ath_reset_work);
 INIT_WORK(&sc->hw_check_work, ath_hw_check);
 INIT_WORK(&sc->paprd_work, ath_paprd_calibrate);
 INIT_DELAYED_WORK(&sc->hw_pll_work, ath_hw_pll_work);
 setup_timer(&sc->rx_poll_timer, ath_rx_poll, (unsigned long)sc);





 ath_read_cachesize(common, &csz);
 common->cachelsz = csz << 2;

 if (pdata && pdata->eeprom_name) {
  ret = ath9k_eeprom_request(sc, pdata->eeprom_name);
  if (ret)
   return ret;
 }


 ret = ath9k_hw_init(ah);
 if (ret)
  goto err_hw;

 if (pdata && pdata->macaddr)
  memcpy(common->macaddr, pdata->macaddr, ETH_ALEN);

 ret = ath9k_init_queues(sc);
 if (ret)
  goto err_queues;

 ret = ath9k_init_btcoex(sc);
 if (ret)
  goto err_btcoex;

 ret = ath9k_init_channels_rates(sc);
 if (ret)
  goto err_btcoex;

 ath9k_cmn_init_crypto(sc->sc_ah);
 ath9k_init_misc(sc);
 ath_fill_led_pin(sc);

 if (common->bus_ops->aspm_init)
  common->bus_ops->aspm_init(common);

 return 0;

err_btcoex:
 for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++)
  if (ATH_TXQ_SETUP(sc, i))
   ath_tx_cleanupq(sc, &sc->tx.txq[i]);
err_queues:
 ath9k_hw_deinit(ah);
err_hw:
 ath9k_eeprom_release(sc);
 return ret;
}
