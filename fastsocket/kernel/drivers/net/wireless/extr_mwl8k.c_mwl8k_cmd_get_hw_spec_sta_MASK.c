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
struct mwl8k_priv {int cookie_dma; int ap_macids_supported; int sta_macids_supported; int /*<<< orphan*/  hw_rev; int /*<<< orphan*/  fw_rev; int /*<<< orphan*/  num_mcaddrs; TYPE_2__* txq; TYPE_1__* rxq; } ;
struct TYPE_6__ {void* length; void* code; } ;
struct mwl8k_cmd_get_hw_spec_sta {int /*<<< orphan*/  caps; int /*<<< orphan*/  hw_rev; int /*<<< orphan*/  fw_rev; int /*<<< orphan*/  num_mcaddrs; int /*<<< orphan*/  perm_addr; TYPE_3__ header; void* total_rxd; void* num_tx_desc_per_queue; void** tx_queue_ptrs; void* num_tx_queues; void* rx_queue_ptr; void* ps_cookie; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_5__ {int txd_dma; } ;
struct TYPE_4__ {int rxd_dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_GET_HW_SPEC ; 
 int MWL8K_RX_DESCS ; 
 int MWL8K_TX_DESCS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl8k_cmd_get_hw_spec_sta*) ; 
 struct mwl8k_cmd_get_hw_spec_sta* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct ieee80211_hw*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mwl8k_priv*) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw)
{
	struct mwl8k_priv *priv = hw->priv;
	struct mwl8k_cmd_get_hw_spec_sta *cmd;
	int rc;
	int i;

	cmd = FUNC4(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC1(MWL8K_CMD_GET_HW_SPEC);
	cmd->header.length = FUNC1(sizeof(*cmd));

	FUNC7(cmd->perm_addr, 0xff, sizeof(cmd->perm_addr));
	cmd->ps_cookie = FUNC2(priv->cookie_dma);
	cmd->rx_queue_ptr = FUNC2(priv->rxq[0].rxd_dma);
	cmd->num_tx_queues = FUNC2(FUNC10(priv));
	for (i = 0; i < FUNC10(priv); i++)
		cmd->tx_queue_ptrs[i] = FUNC2(priv->txq[i].txd_dma);
	cmd->num_tx_desc_per_queue = FUNC2(MWL8K_TX_DESCS);
	cmd->total_rxd = FUNC2(MWL8K_RX_DESCS);

	rc = FUNC8(hw, &cmd->header);

	if (!rc) {
		FUNC0(hw, cmd->perm_addr);
		priv->num_mcaddrs = FUNC5(cmd->num_mcaddrs);
		priv->fw_rev = FUNC6(cmd->fw_rev);
		priv->hw_rev = cmd->hw_rev;
		FUNC9(hw, FUNC6(cmd->caps));
		priv->ap_macids_supported = 0x00000000;
		priv->sta_macids_supported = 0x00000001;
	}

	FUNC3(cmd);
	return rc;
}