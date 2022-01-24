#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  filter_flags; } ;
struct TYPE_3__ {scalar_t__ is_valid; } ;
struct il_priv {int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  status; TYPE_2__ staging; int /*<<< orphan*/  active; int /*<<< orphan*/  active_rate; int /*<<< orphan*/  hw; TYPE_1__ card_alive; } ;
struct il3945_rxon_cmd {int /*<<< orphan*/  filter_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_RFKILL_REG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RATES_MASK_3945 ; 
 int /*<<< orphan*/  RXON_FILTER_ASSOC_MSK ; 
 int /*<<< orphan*/  S_ALIVE ; 
 int /*<<< orphan*/  S_READY ; 
 int /*<<< orphan*/  S_RFKILL ; 
 scalar_t__ UCODE_VALID_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 scalar_t__ FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*) ; 
 scalar_t__ FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 scalar_t__ FUNC8 (struct il_priv*) ; 
 scalar_t__ FUNC9 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*,int) ; 
 int FUNC11 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct il_priv *il)
{
	int thermal_spin = 0;
	u32 rfkill;

	FUNC0("Runtime Alive received.\n");

	if (il->card_alive.is_valid != UCODE_VALID_OK) {
		/* We had an error bringing up the hardware, so take it
		 * all the way back down so we can try again */
		FUNC0("Alive failed.\n");
		goto restart;
	}

	/* Initialize uCode has loaded Runtime uCode ... verify inst image.
	 * This is a paranoid check, because we would not have gotten the
	 * "runtime" alive if code weren't properly loaded.  */
	if (FUNC6(il)) {
		/* Runtime instruction load was bad;
		 * take it all the way back down so we can try again */
		FUNC0("Bad runtime uCode load.\n");
		goto restart;
	}

	rfkill = FUNC11(il, APMG_RFKILL_REG);
	FUNC0("RFKILL status: 0x%x\n", rfkill);

	if (rfkill & 0x1) {
		FUNC1(S_RFKILL, &il->status);
		/* if RFKILL is not on, then wait for thermal
		 * sensor in adapter to kick in */
		while (FUNC4(il) == 0) {
			thermal_spin++;
			FUNC16(10);
		}

		if (thermal_spin)
			FUNC0("Thermal calibration took %dus\n",
			       thermal_spin * 10);
	} else
		FUNC15(S_RFKILL, &il->status);

	/* After the ALIVE response, we can send commands to 3945 uCode */
	FUNC15(S_ALIVE, &il->status);

	/* Enable watchdog to monitor the driver tx queues */
	FUNC13(il);

	if (FUNC9(il))
		return;

	FUNC2(il->hw);

	il->active_rate = RATES_MASK_3945;

	FUNC10(il, true);

	if (FUNC8(il)) {
		struct il3945_rxon_cmd *active_rxon =
		    (struct il3945_rxon_cmd *)(&il->active);

		il->staging.filter_flags |= RXON_FILTER_ASSOC_MSK;
		active_rxon->filter_flags &= ~RXON_FILTER_ASSOC_MSK;
	} else {
		/* Initialize our rx_config data */
		FUNC7(il);
	}

	/* Configure Bluetooth device coexistence support */
	FUNC12(il);

	FUNC15(S_READY, &il->status);

	/* Configure the adapter for unassociated operation */
	FUNC3(il);

	FUNC5(il);

	FUNC0("ALIVE processing complete.\n");
	FUNC17(&il->wait_command_queue);

	return;

restart:
	FUNC14(il->workqueue, &il->restart);
}