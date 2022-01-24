#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct mwl8k_tx_queue {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; int /*<<< orphan*/  len; struct mwl8k_tx_desc* txd; } ;
struct mwl8k_tx_desc {scalar_t__ pkt_len; int /*<<< orphan*/  status; } ;
struct mwl8k_priv {struct mwl8k_tx_queue* txq; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int MWL8K_TXD_STATUS_FW_OWNED ; 
 int MWL8K_TX_DESCS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct mwl8k_priv *priv = hw->priv;
	int i;

	for (i = 0; i < FUNC1(priv); i++) {
		struct mwl8k_tx_queue *txq = priv->txq + i;
		int fw_owned = 0;
		int drv_owned = 0;
		int unused = 0;
		int desc;

		for (desc = 0; desc < MWL8K_TX_DESCS; desc++) {
			struct mwl8k_tx_desc *tx_desc = txq->txd + desc;
			u32 status;

			status = FUNC0(tx_desc->status);
			if (status & MWL8K_TXD_STATUS_FW_OWNED)
				fw_owned++;
			else
				drv_owned++;

			if (tx_desc->pkt_len == 0)
				unused++;
		}

		FUNC2(hw->wiphy,
			  "txq[%d] len=%d head=%d tail=%d "
			  "fw_owned=%d drv_owned=%d unused=%d\n",
			  i,
			  txq->len, txq->head, txq->tail,
			  fw_owned, drv_owned, unused);
	}
}