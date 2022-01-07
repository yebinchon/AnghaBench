
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int rmw; int write_flush; int enable_write_buffer; int write; int multi_read; int read; } ;
struct TYPE_5__ {int usbdev; int devid; } ;
struct ath_hw {TYPE_2__ reg_ops; int ah_flags; TYPE_1__ hw_version; } ;
struct ath_common {int btcoex_enabled; int cachelsz; int debug_mask; struct ath9k_htc_priv* priv; int hw; struct ath_hw* ah; int * bus_ops; TYPE_2__* ops; } ;
struct TYPE_8__ {int ** bslot; } ;
struct TYPE_7__ {int cleanup_timer; int tx_lock; } ;
struct ath9k_htc_priv {struct ath_hw* ah; TYPE_4__ cur_beacon_conf; TYPE_3__ tx; int fatal_work; int ps_work; int ani_work; int tx_failed_tasklet; int rx_tasklet; int htc_pm_lock; int mutex; int beacon_lock; int hw; int op_flags; } ;


 int AH_USE_EEPROM ;
 int ATH9K_HTC_MAX_BCN_VIF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int OP_INVALID ;
 int ath9k_cmn_init_crypto (struct ath_hw*) ;
 int ath9k_debug ;
 int ath9k_enable_regwrite_buffer ;
 int ath9k_fatal_work ;
 int ath9k_htc_ani_work ;
 int ath9k_htc_btcoex_enable ;
 int ath9k_htc_init_btcoex (struct ath9k_htc_priv*,char*) ;
 int ath9k_htc_tx_cleanup_timer ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_deinit (struct ath_hw*) ;
 int ath9k_hw_init (struct ath_hw*) ;
 int ath9k_init_channels_rates (struct ath9k_htc_priv*) ;
 int ath9k_init_misc (struct ath9k_htc_priv*) ;
 int ath9k_init_queues (struct ath9k_htc_priv*) ;
 int ath9k_multi_regread ;
 int ath9k_ps_work ;
 int ath9k_reg_rmw ;
 int ath9k_regread ;
 int ath9k_regwrite ;
 int ath9k_regwrite_flush ;
 int ath9k_rx_tasklet ;
 int ath9k_tx_failed_tasklet ;
 int ath9k_usb_bus_ops ;
 int ath_err (struct ath_common*,char*,int) ;
 int ath_read_cachesize (struct ath_common*,int*) ;
 int kfree (struct ath_hw*) ;
 struct ath_hw* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int set_bit (int ,int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int ath9k_init_priv(struct ath9k_htc_priv *priv,
      u16 devid, char *product,
      u32 drv_info)
{
 struct ath_hw *ah = ((void*)0);
 struct ath_common *common;
 int i, ret = 0, csz = 0;

 set_bit(OP_INVALID, &priv->op_flags);

 ah = kzalloc(sizeof(struct ath_hw), GFP_KERNEL);
 if (!ah)
  return -ENOMEM;

 ah->hw_version.devid = devid;
 ah->hw_version.usbdev = drv_info;
 ah->ah_flags |= AH_USE_EEPROM;
 ah->reg_ops.read = ath9k_regread;
 ah->reg_ops.multi_read = ath9k_multi_regread;
 ah->reg_ops.write = ath9k_regwrite;
 ah->reg_ops.enable_write_buffer = ath9k_enable_regwrite_buffer;
 ah->reg_ops.write_flush = ath9k_regwrite_flush;
 ah->reg_ops.rmw = ath9k_reg_rmw;
 priv->ah = ah;

 common = ath9k_hw_common(ah);
 common->ops = &ah->reg_ops;
 common->bus_ops = &ath9k_usb_bus_ops;
 common->ah = ah;
 common->hw = priv->hw;
 common->priv = priv;
 common->debug_mask = ath9k_debug;
 common->btcoex_enabled = ath9k_htc_btcoex_enable == 1;

 spin_lock_init(&priv->beacon_lock);
 spin_lock_init(&priv->tx.tx_lock);
 mutex_init(&priv->mutex);
 mutex_init(&priv->htc_pm_lock);
 tasklet_init(&priv->rx_tasklet, ath9k_rx_tasklet,
       (unsigned long)priv);
 tasklet_init(&priv->tx_failed_tasklet, ath9k_tx_failed_tasklet,
       (unsigned long)priv);
 INIT_DELAYED_WORK(&priv->ani_work, ath9k_htc_ani_work);
 INIT_WORK(&priv->ps_work, ath9k_ps_work);
 INIT_WORK(&priv->fatal_work, ath9k_fatal_work);
 setup_timer(&priv->tx.cleanup_timer, ath9k_htc_tx_cleanup_timer,
      (unsigned long)priv);





 ath_read_cachesize(common, &csz);
 common->cachelsz = csz << 2;

 ret = ath9k_hw_init(ah);
 if (ret) {
  ath_err(common,
   "Unable to initialize hardware; initialization status: %d\n",
   ret);
  goto err_hw;
 }

 ret = ath9k_init_queues(priv);
 if (ret)
  goto err_queues;

 for (i = 0; i < ATH9K_HTC_MAX_BCN_VIF; i++)
  priv->cur_beacon_conf.bslot[i] = ((void*)0);

 ath9k_cmn_init_crypto(ah);
 ath9k_init_channels_rates(priv);
 ath9k_init_misc(priv);
 ath9k_htc_init_btcoex(priv, product);

 return 0;

err_queues:
 ath9k_hw_deinit(ah);
err_hw:

 kfree(ah);
 priv->ah = ((void*)0);

 return ret;
}
