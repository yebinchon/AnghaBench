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
struct il_rxon_cmd {int filter_flags; scalar_t__ channel; int /*<<< orphan*/  bssid_addr; int /*<<< orphan*/  flags; } ;
struct il_priv {scalar_t__ switch_channel; int /*<<< orphan*/  tx_power_next; struct il_rxon_cmd staging; scalar_t__ start_calib; TYPE_2__* cfg; int /*<<< orphan*/  status; int /*<<< orphan*/  active; } ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int /*<<< orphan*/  sw_crypto; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_RXON ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int RXON_FILTER_ASSOC_MSK ; 
 int /*<<< orphan*/  RXON_FLG_TSF2HOST_MSK ; 
 int /*<<< orphan*/  S_CHANNEL_SWITCH_PENDING ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int FUNC4 (struct il_priv*) ; 
 int FUNC5 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*) ; 
 scalar_t__ FUNC10 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct il_priv*) ; 
 int FUNC13 (struct il_priv*,int /*<<< orphan*/ ,int,struct il_rxon_cmd*) ; 
 int FUNC14 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct il_priv*,int) ; 
 int FUNC16 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct il_rxon_cmd*,struct il_rxon_cmd*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(struct il_priv *il)
{
	/* cast away the const for active_rxon in this function */
	struct il_rxon_cmd *active_rxon = (void *)&il->active;
	int ret;
	bool new_assoc = !!(il->staging.filter_flags & RXON_FILTER_ASSOC_MSK);

	if (!FUNC9(il))
		return -EBUSY;

	/* always get timestamp with Rx frame */
	il->staging.flags |= RXON_FLG_TSF2HOST_MSK;

	ret = FUNC5(il);
	if (ret) {
		FUNC2("Invalid RXON configuration.  Not committing.\n");
		return -EINVAL;
	}

	/*
	 * receive commit_rxon request
	 * abort any previous channel switch if still in process
	 */
	if (FUNC19(S_CHANNEL_SWITCH_PENDING, &il->status) &&
	    il->switch_channel != il->staging.channel) {
		FUNC0("abort channel switch on %d\n",
		      FUNC17(il->switch_channel));
		FUNC6(il, false);
	}

	/* If we don't need to send a full RXON, we can use
	 * il_rxon_assoc_cmd which is used to reconfigure filter
	 * and other flags for the current radio configuration. */
	if (!FUNC8(il)) {
		ret = FUNC14(il);
		if (ret) {
			FUNC2("Error setting RXON_ASSOC (%d)\n", ret);
			return ret;
		}

		FUNC18(active_rxon, &il->staging, sizeof(*active_rxon));
		FUNC11(il);
		/*
		 * We do not commit tx power settings while channel changing,
		 * do it now if tx power changed.
		 */
		FUNC16(il, il->tx_power_next, false);
		return 0;
	}

	/* If we are currently associated and the new config requires
	 * an RXON_ASSOC and the new config wants the associated mask enabled,
	 * we must clear the associated from the active configuration
	 * before we apply the new config */
	if (FUNC10(il) && new_assoc) {
		FUNC1("Toggling associated bit on current RXON\n");
		active_rxon->filter_flags &= ~RXON_FILTER_ASSOC_MSK;

		ret =
		    FUNC13(il, C_RXON,
				    sizeof(struct il_rxon_cmd), active_rxon);

		/* If the mask clearing failed then we set
		 * active_rxon back to what it was previously */
		if (ret) {
			active_rxon->filter_flags |= RXON_FILTER_ASSOC_MSK;
			FUNC2("Error clearing ASSOC_MSK (%d)\n", ret);
			return ret;
		}
		FUNC7(il);
		FUNC12(il);
		ret = FUNC4(il);
		if (ret) {
			FUNC2("Failed to restore WEP keys (%d)\n", ret);
			return ret;
		}
	}

	FUNC1("Sending RXON\n" "* with%s RXON_FILTER_ASSOC_MSK\n"
	       "* channel = %d\n" "* bssid = %pM\n", (new_assoc ? "" : "out"),
	       FUNC17(il->staging.channel), il->staging.bssid_addr);

	FUNC15(il, !il->cfg->mod_params->sw_crypto);

	/* Apply the new configuration
	 * RXON unassoc clears the station table in uCode so restoration of
	 * stations is needed after it (the RXON command) completes
	 */
	if (!new_assoc) {
		ret =
		    FUNC13(il, C_RXON,
				    sizeof(struct il_rxon_cmd), &il->staging);
		if (ret) {
			FUNC2("Error setting new RXON (%d)\n", ret);
			return ret;
		}
		FUNC1("Return from !new_assoc RXON.\n");
		FUNC18(active_rxon, &il->staging, sizeof(*active_rxon));
		FUNC7(il);
		FUNC12(il);
		ret = FUNC4(il);
		if (ret) {
			FUNC2("Failed to restore WEP keys (%d)\n", ret);
			return ret;
		}
	}
	if (new_assoc) {
		il->start_calib = 0;
		/* Apply the new configuration
		 * RXON assoc doesn't clear the station table in uCode,
		 */
		ret =
		    FUNC13(il, C_RXON,
				    sizeof(struct il_rxon_cmd), &il->staging);
		if (ret) {
			FUNC2("Error setting new RXON (%d)\n", ret);
			return ret;
		}
		FUNC18(active_rxon, &il->staging, sizeof(*active_rxon));
	}
	FUNC11(il);

	FUNC3(il);

	/* If we issue a new RXON command which required a tune then we must
	 * send a new TXPOWER command or we won't be able to Tx any frames */
	ret = FUNC16(il, il->tx_power_next, true);
	if (ret) {
		FUNC2("Error sending TX power (%d)\n", ret);
		return ret;
	}

	return 0;
}