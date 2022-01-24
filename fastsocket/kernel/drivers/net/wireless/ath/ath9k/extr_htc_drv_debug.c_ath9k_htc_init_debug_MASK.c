#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  debugfs_phy; } ;
struct ath9k_htc_priv {TYPE_3__ debug; TYPE_2__* hw; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct ath9k_htc_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_base_eeprom ; 
 int /*<<< orphan*/  fops_debug ; 
 int /*<<< orphan*/  fops_modal_eeprom ; 
 int /*<<< orphan*/  fops_queue ; 
 int /*<<< orphan*/  fops_recv ; 
 int /*<<< orphan*/  fops_slot ; 
 int /*<<< orphan*/  fops_tgt_int_stats ; 
 int /*<<< orphan*/  fops_tgt_rx_stats ; 
 int /*<<< orphan*/  fops_tgt_tx_stats ; 
 int /*<<< orphan*/  fops_xmit ; 

int FUNC3(struct ath_hw *ah)
{
	struct ath_common *common = FUNC0(ah);
	struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

	priv->debug.debugfs_phy = FUNC1(KBUILD_MODNAME,
					     priv->hw->wiphy->debugfsdir);
	if (!priv->debug.debugfs_phy)
		return -ENOMEM;

	FUNC2("tgt_int_stats", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_tgt_int_stats);
	FUNC2("tgt_tx_stats", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_tgt_tx_stats);
	FUNC2("tgt_rx_stats", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_tgt_rx_stats);
	FUNC2("xmit", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_xmit);
	FUNC2("recv", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_recv);
	FUNC2("slot", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_slot);
	FUNC2("queue", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_queue);
	FUNC2("debug", S_IRUSR | S_IWUSR, priv->debug.debugfs_phy,
			    priv, &fops_debug);
	FUNC2("base_eeprom", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_base_eeprom);
	FUNC2("modal_eeprom", S_IRUSR, priv->debug.debugfs_phy,
			    priv, &fops_modal_eeprom);

	return 0;
}