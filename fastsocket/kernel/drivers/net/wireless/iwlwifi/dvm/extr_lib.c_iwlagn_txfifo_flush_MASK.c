#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct iwl_txfifo_flush_cmd {int queue_control; int /*<<< orphan*/  flush_control; } ;
struct iwl_priv {scalar_t__ valid_contexts; TYPE_1__* nvm_data; } ;
struct iwl_host_cmd {int /*<<< orphan*/  data; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  flush_cmd ;
struct TYPE_2__ {scalar_t__ sku_cap_11n_enable; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_SYNC ; 
 int IWL_AGG_TX_QUEUE_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int) ; 
 int /*<<< orphan*/  IWL_DROP_ALL ; 
 int IWL_PAN_SCD_BE_MSK ; 
 int IWL_PAN_SCD_BK_MSK ; 
 int IWL_PAN_SCD_MGMT_MSK ; 
 int IWL_PAN_SCD_MULTICAST_MSK ; 
 int IWL_PAN_SCD_VI_MSK ; 
 int IWL_PAN_SCD_VO_MSK ; 
 int /*<<< orphan*/  IWL_RXON_CTX_BSS ; 
 int IWL_SCD_BE_MSK ; 
 int IWL_SCD_BK_MSK ; 
 int IWL_SCD_MGMT_MSK ; 
 int IWL_SCD_VI_MSK ; 
 int IWL_SCD_VO_MSK ; 
 int /*<<< orphan*/  REPLY_TXFIFO_FLUSH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct iwl_priv*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_txfifo_flush_cmd*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct iwl_priv *priv, u32 scd_q_msk)
{
	struct iwl_txfifo_flush_cmd flush_cmd;
	struct iwl_host_cmd cmd = {
		.id = REPLY_TXFIFO_FLUSH,
		.len = sizeof(struct iwl_txfifo_flush_cmd), 
		.flags = CMD_SYNC,
		.data = &flush_cmd, 
	};

	FUNC5(&flush_cmd, 0, sizeof(flush_cmd));

	flush_cmd.queue_control = IWL_SCD_VO_MSK | IWL_SCD_VI_MSK |
				  IWL_SCD_BE_MSK | IWL_SCD_BK_MSK |
				  IWL_SCD_MGMT_MSK;
	if ((priv->valid_contexts != FUNC0(IWL_RXON_CTX_BSS)))
		flush_cmd.queue_control |= IWL_PAN_SCD_VO_MSK |
					   IWL_PAN_SCD_VI_MSK |
					   IWL_PAN_SCD_BE_MSK |
					   IWL_PAN_SCD_BK_MSK |
					   IWL_PAN_SCD_MGMT_MSK |
					   IWL_PAN_SCD_MULTICAST_MSK;

	if (priv->nvm_data->sku_cap_11n_enable)
		flush_cmd.queue_control |= IWL_AGG_TX_QUEUE_MSK;

	if (scd_q_msk)
		flush_cmd.queue_control = FUNC3(scd_q_msk);

	FUNC1(priv, "queue control: 0x%x\n",
		       flush_cmd.queue_control);
	flush_cmd.flush_control = FUNC2(IWL_DROP_ALL);

	return FUNC4(priv, &cmd);
}