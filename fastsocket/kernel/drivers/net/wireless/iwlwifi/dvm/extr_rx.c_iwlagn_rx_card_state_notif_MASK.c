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
typedef  int u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {unsigned long status; TYPE_1__* hw; int /*<<< orphan*/  trans; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_card_state_notif {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_CLR ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_SET ; 
 int CT_CARD_DISABLED ; 
 int /*<<< orphan*/  HBUS_TARG_MBX_C ; 
 int /*<<< orphan*/  HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED ; 
 int HW_CARD_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,char*,char*,char*) ; 
 int RXON_CARD_DISABLED ; 
 int /*<<< orphan*/  STATUS_RF_KILL_HW ; 
 int SW_CARD_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC8 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct iwl_priv *priv,
				    struct iwl_rx_cmd_buffer *rxb,
				    struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC8(rxb);
	struct iwl_card_state_notif *card_state_notif = (void *)pkt->data;
	u32 flags = FUNC7(card_state_notif->flags);
	unsigned long status = priv->status;

	FUNC0(priv, "Card state received: HW:%s SW:%s CT:%s\n",
			  (flags & HW_CARD_DISABLED) ? "Kill" : "On",
			  (flags & SW_CARD_DISABLED) ? "Kill" : "On",
			  (flags & CT_CARD_DISABLED) ?
			  "Reached" : "Not reached");

	if (flags & (SW_CARD_DISABLED | HW_CARD_DISABLED |
		     CT_CARD_DISABLED)) {

		FUNC5(priv->trans, CSR_UCODE_DRV_GP1_SET,
			    CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);

		FUNC6(priv->trans, HBUS_TARG_MBX_C,
					HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED);

		if (!(flags & RXON_CARD_DISABLED)) {
			FUNC5(priv->trans, CSR_UCODE_DRV_GP1_CLR,
				    CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);
			FUNC6(priv->trans, HBUS_TARG_MBX_C,
					HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED);
		}
		if (flags & CT_CARD_DISABLED)
			FUNC3(priv);
	}
	if (!(flags & CT_CARD_DISABLED))
		FUNC4(priv);

	if (flags & HW_CARD_DISABLED)
		FUNC9(STATUS_RF_KILL_HW, &priv->status);
	else
		FUNC1(STATUS_RF_KILL_HW, &priv->status);


	if (!(flags & RXON_CARD_DISABLED))
		FUNC2(priv);

	if ((FUNC10(STATUS_RF_KILL_HW, &status) !=
	     FUNC10(STATUS_RF_KILL_HW, &priv->status)))
		FUNC11(priv->hw->wiphy,
			FUNC10(STATUS_RF_KILL_HW, &priv->status));
	return 0;
}