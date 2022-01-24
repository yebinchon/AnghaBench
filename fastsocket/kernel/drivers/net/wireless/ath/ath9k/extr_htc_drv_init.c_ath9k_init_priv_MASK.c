#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  rmw; int /*<<< orphan*/  write_flush; int /*<<< orphan*/  enable_write_buffer; int /*<<< orphan*/  write; int /*<<< orphan*/  multi_read; int /*<<< orphan*/  read; } ;
struct TYPE_5__ {int /*<<< orphan*/  usbdev; int /*<<< orphan*/  devid; } ;
struct ath_hw {TYPE_2__ reg_ops; int /*<<< orphan*/  ah_flags; TYPE_1__ hw_version; } ;
struct ath_common {int btcoex_enabled; int cachelsz; int /*<<< orphan*/  debug_mask; struct ath9k_htc_priv* priv; int /*<<< orphan*/  hw; struct ath_hw* ah; int /*<<< orphan*/ * bus_ops; TYPE_2__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/ ** bslot; } ;
struct TYPE_7__ {int /*<<< orphan*/  cleanup_timer; int /*<<< orphan*/  tx_lock; } ;
struct ath9k_htc_priv {struct ath_hw* ah; TYPE_4__ cur_beacon_conf; TYPE_3__ tx; int /*<<< orphan*/  fatal_work; int /*<<< orphan*/  ps_work; int /*<<< orphan*/  ani_work; int /*<<< orphan*/  tx_failed_tasklet; int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  htc_pm_lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  beacon_lock; int /*<<< orphan*/  hw; int /*<<< orphan*/  op_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_USE_EEPROM ; 
 int ATH9K_HTC_MAX_BCN_VIF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_INVALID ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  ath9k_debug ; 
 int /*<<< orphan*/  ath9k_enable_regwrite_buffer ; 
 int /*<<< orphan*/  ath9k_fatal_work ; 
 int /*<<< orphan*/  ath9k_htc_ani_work ; 
 int ath9k_htc_btcoex_enable ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*,char*) ; 
 int /*<<< orphan*/  ath9k_htc_tx_cleanup_timer ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath9k_htc_priv*) ; 
 int FUNC9 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  ath9k_multi_regread ; 
 int /*<<< orphan*/  ath9k_ps_work ; 
 int /*<<< orphan*/  ath9k_reg_rmw ; 
 int /*<<< orphan*/  ath9k_regread ; 
 int /*<<< orphan*/  ath9k_regwrite ; 
 int /*<<< orphan*/  ath9k_regwrite_flush ; 
 int /*<<< orphan*/  ath9k_rx_tasklet ; 
 int /*<<< orphan*/  ath9k_tx_failed_tasklet ; 
 int /*<<< orphan*/  ath9k_usb_bus_ops ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 struct ath_hw* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC19(struct ath9k_htc_priv *priv,
			   u16 devid, char *product,
			   u32 drv_info)
{
	struct ath_hw *ah = NULL;
	struct ath_common *common;
	int i, ret = 0, csz = 0;

	FUNC15(OP_INVALID, &priv->op_flags);

	ah = FUNC13(sizeof(struct ath_hw), GFP_KERNEL);
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

	common = FUNC4(ah);
	common->ops = &ah->reg_ops;
	common->bus_ops = &ath9k_usb_bus_ops;
	common->ah = ah;
	common->hw = priv->hw;
	common->priv = priv;
	common->debug_mask = ath9k_debug;
	common->btcoex_enabled = ath9k_htc_btcoex_enable == 1;

	FUNC17(&priv->beacon_lock);
	FUNC17(&priv->tx.tx_lock);
	FUNC14(&priv->mutex);
	FUNC14(&priv->htc_pm_lock);
	FUNC18(&priv->rx_tasklet, ath9k_rx_tasklet,
		     (unsigned long)priv);
	FUNC18(&priv->tx_failed_tasklet, ath9k_tx_failed_tasklet,
		     (unsigned long)priv);
	FUNC0(&priv->ani_work, ath9k_htc_ani_work);
	FUNC1(&priv->ps_work, ath9k_ps_work);
	FUNC1(&priv->fatal_work, ath9k_fatal_work);
	FUNC16(&priv->tx.cleanup_timer, ath9k_htc_tx_cleanup_timer,
		    (unsigned long)priv);

	/*
	 * Cache line size is used to size and align various
	 * structures used to communicate with the hardware.
	 */
	FUNC11(common, &csz);
	common->cachelsz = csz << 2; /* convert to bytes */

	ret = FUNC6(ah);
	if (ret) {
		FUNC10(common,
			"Unable to initialize hardware; initialization status: %d\n",
			ret);
		goto err_hw;
	}

	ret = FUNC9(priv);
	if (ret)
		goto err_queues;

	for (i = 0; i < ATH9K_HTC_MAX_BCN_VIF; i++)
		priv->cur_beacon_conf.bslot[i] = NULL;

	FUNC2(ah);
	FUNC7(priv);
	FUNC8(priv);
	FUNC3(priv, product);

	return 0;

err_queues:
	FUNC5(ah);
err_hw:

	FUNC12(ah);
	priv->ah = NULL;

	return ret;
}