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
typedef  int u32 ;
struct ipw_priv {int isr_inta; int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  adapter_restart; int /*<<< orphan*/  wait_command_queue; TYPE_3__* ieee; struct ipw_fw_error* error; int /*<<< orphan*/  rf_kill; int /*<<< orphan*/  link_down; int /*<<< orphan*/  scan_event; int /*<<< orphan*/  request_passive_scan; int /*<<< orphan*/  request_direct_scan; int /*<<< orphan*/  request_scan; int /*<<< orphan*/ * txq; int /*<<< orphan*/  txq_cmd; int /*<<< orphan*/  irq_lock; } ;
struct ipw_fw_error {int dummy; } ;
struct TYPE_5__ {scalar_t__ encrypt; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_6__ {TYPE_2__ sec; TYPE_1__ wdev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int IPW_DL_FW_ERRORS ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int IPW_INTA_BIT_BEACON_PERIOD_EXPIRED ; 
 int IPW_INTA_BIT_FATAL_ERROR ; 
 int IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE ; 
 int IPW_INTA_BIT_FW_INITIALIZATION_DONE ; 
 int IPW_INTA_BIT_PARITY_ERROR ; 
 int IPW_INTA_BIT_RF_KILL_DONE ; 
 int IPW_INTA_BIT_RX_TRANSFER ; 
 int IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE ; 
 int IPW_INTA_BIT_STATUS_CHANGE ; 
 int IPW_INTA_BIT_TX_CMD_QUEUE ; 
 int IPW_INTA_BIT_TX_QUEUE_1 ; 
 int IPW_INTA_BIT_TX_QUEUE_2 ; 
 int IPW_INTA_BIT_TX_QUEUE_3 ; 
 int IPW_INTA_BIT_TX_QUEUE_4 ; 
 int IPW_INTA_MASK_ALL ; 
 int /*<<< orphan*/  IPW_INTA_MASK_R ; 
 int /*<<< orphan*/  IPW_INTA_RW ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int STATUS_ASSOCIATED ; 
 int STATUS_ASSOCIATING ; 
 int STATUS_HCMD_ACTIVE ; 
 int STATUS_INIT ; 
 int STATUS_RF_KILL_HW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct ipw_priv*) ; 
 int ipw_debug_level ; 
 int /*<<< orphan*/  FUNC8 (struct ipw_priv*,struct ipw_fw_error*) ; 
 int /*<<< orphan*/  FUNC9 (struct ipw_priv*) ; 
 int FUNC10 (struct ipw_priv*,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct ipw_fw_error*) ; 
 int /*<<< orphan*/  FUNC14 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC21(struct ipw_priv *priv)
{
	u32 inta, inta_mask, handled = 0;
	unsigned long flags;
	int rc = 0;

	FUNC17(&priv->irq_lock, flags);

	inta = FUNC11(priv, IPW_INTA_RW);
	inta_mask = FUNC11(priv, IPW_INTA_MASK_R);

	if (inta == 0xFFFFFFFF) {
		/* Hardware disappeared */
		FUNC5("TASKLET INTA == 0xFFFFFFFF\n");
		/* Only handle the cached INTA values */
		inta = 0;
	}
	inta &= (IPW_INTA_MASK_ALL & inta_mask);

	/* Add any cached INTA values that need to be handled */
	inta |= priv->isr_inta;

	FUNC18(&priv->irq_lock, flags);

	FUNC17(&priv->lock, flags);

	/* handle all the justifications for the interrupt */
	if (inta & IPW_INTA_BIT_RX_TRANSFER) {
		FUNC12(priv);
		handled |= IPW_INTA_BIT_RX_TRANSFER;
	}

	if (inta & IPW_INTA_BIT_TX_CMD_QUEUE) {
		FUNC1("Command completed.\n");
		rc = FUNC10(priv, &priv->txq_cmd, -1);
		priv->status &= ~STATUS_HCMD_ACTIVE;
		FUNC19(&priv->wait_command_queue);
		handled |= IPW_INTA_BIT_TX_CMD_QUEUE;
	}

	if (inta & IPW_INTA_BIT_TX_QUEUE_1) {
		FUNC3("TX_QUEUE_1\n");
		rc = FUNC10(priv, &priv->txq[0], 0);
		handled |= IPW_INTA_BIT_TX_QUEUE_1;
	}

	if (inta & IPW_INTA_BIT_TX_QUEUE_2) {
		FUNC3("TX_QUEUE_2\n");
		rc = FUNC10(priv, &priv->txq[1], 1);
		handled |= IPW_INTA_BIT_TX_QUEUE_2;
	}

	if (inta & IPW_INTA_BIT_TX_QUEUE_3) {
		FUNC3("TX_QUEUE_3\n");
		rc = FUNC10(priv, &priv->txq[2], 2);
		handled |= IPW_INTA_BIT_TX_QUEUE_3;
	}

	if (inta & IPW_INTA_BIT_TX_QUEUE_4) {
		FUNC3("TX_QUEUE_4\n");
		rc = FUNC10(priv, &priv->txq[3], 3);
		handled |= IPW_INTA_BIT_TX_QUEUE_4;
	}

	if (inta & IPW_INTA_BIT_STATUS_CHANGE) {
		FUNC5("STATUS_CHANGE\n");
		handled |= IPW_INTA_BIT_STATUS_CHANGE;
	}

	if (inta & IPW_INTA_BIT_BEACON_PERIOD_EXPIRED) {
		FUNC5("TX_PERIOD_EXPIRED\n");
		handled |= IPW_INTA_BIT_BEACON_PERIOD_EXPIRED;
	}

	if (inta & IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE) {
		FUNC5("HOST_CMD_DONE\n");
		handled |= IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE;
	}

	if (inta & IPW_INTA_BIT_FW_INITIALIZATION_DONE) {
		FUNC5("FW_INITIALIZATION_DONE\n");
		handled |= IPW_INTA_BIT_FW_INITIALIZATION_DONE;
	}

	if (inta & IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE) {
		FUNC5("PHY_OFF_DONE\n");
		handled |= IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE;
	}

	if (inta & IPW_INTA_BIT_RF_KILL_DONE) {
		FUNC2("RF_KILL_DONE\n");
		priv->status |= STATUS_RF_KILL_HW;
		FUNC20(priv->ieee->wdev.wiphy, true);
		FUNC19(&priv->wait_command_queue);
		priv->status &= ~(STATUS_ASSOCIATED | STATUS_ASSOCIATING);
		FUNC6(&priv->request_scan);
		FUNC6(&priv->request_direct_scan);
		FUNC6(&priv->request_passive_scan);
		FUNC6(&priv->scan_event);
		FUNC16(&priv->link_down);
		FUNC15(&priv->rf_kill, 2 * HZ);
		handled |= IPW_INTA_BIT_RF_KILL_DONE;
	}

	if (inta & IPW_INTA_BIT_FATAL_ERROR) {
		FUNC5("Firmware error detected.  Restarting.\n");
		if (priv->error) {
			FUNC0("Sysfs 'error' log already exists.\n");
			if (ipw_debug_level & IPW_DL_FW_ERRORS) {
				struct ipw_fw_error *error =
				    FUNC7(priv);
				FUNC8(priv, error);
				FUNC13(error);
			}
		} else {
			priv->error = FUNC7(priv);
			if (priv->error)
				FUNC0("Sysfs 'error' log captured.\n");
			else
				FUNC0("Error allocating sysfs 'error' "
					     "log.\n");
			if (ipw_debug_level & IPW_DL_FW_ERRORS)
				FUNC8(priv, priv->error);
		}

		/* XXX: If hardware encryption is for WPA/WPA2,
		 * we have to notify the supplicant. */
		if (priv->ieee->sec.encrypt) {
			priv->status &= ~STATUS_ASSOCIATED;
			FUNC14(priv);
		}

		/* Keep the restart process from trying to send host
		 * commands by clearing the INIT status bit */
		priv->status &= ~STATUS_INIT;

		/* Cancel currently queued command. */
		priv->status &= ~STATUS_HCMD_ACTIVE;
		FUNC19(&priv->wait_command_queue);

		FUNC16(&priv->adapter_restart);
		handled |= IPW_INTA_BIT_FATAL_ERROR;
	}

	if (inta & IPW_INTA_BIT_PARITY_ERROR) {
		FUNC4("Parity error\n");
		handled |= IPW_INTA_BIT_PARITY_ERROR;
	}

	if (handled != inta) {
		FUNC4("Unhandled INTA bits 0x%08x\n", inta & ~handled);
	}

	FUNC18(&priv->lock, flags);

	/* enable all interrupts */
	FUNC9(priv);
}