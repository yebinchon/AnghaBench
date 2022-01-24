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
struct il3945_rxon_cmd {int filter_flags; int flags; scalar_t__ reserved5; scalar_t__ reserved4; int /*<<< orphan*/  bssid_addr; int /*<<< orphan*/  channel; } ;
struct il_priv {int /*<<< orphan*/  tx_power_next; struct il3945_rxon_cmd active; int /*<<< orphan*/  status; int /*<<< orphan*/  staging; } ;
struct TYPE_2__ {int /*<<< orphan*/  sw_crypto; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_RXON ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int RXON_FILTER_ASSOC_MSK ; 
 int RXON_FLG_ANT_SEL_MSK ; 
 int RXON_FLG_DIS_DIV_MSK ; 
 int RXON_FLG_TSF2HOST_MSK ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int FUNC2 (struct il_priv*) ; 
 int FUNC3 (struct il_priv*) ; 
 TYPE_1__ il3945_mod_params ; 
 int FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 scalar_t__ FUNC8 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*) ; 
 int FUNC10 (struct il_priv*,int /*<<< orphan*/ ,int,struct il3945_rxon_cmd*) ; 
 int FUNC11 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct il_priv*,int) ; 
 int FUNC13 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct il3945_rxon_cmd*,struct il3945_rxon_cmd*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC17(struct il_priv *il)
{
	/* cast away the const for active_rxon in this function */
	struct il3945_rxon_cmd *active_rxon = (void *)&il->active;
	struct il3945_rxon_cmd *staging_rxon = (void *)&il->staging;
	int rc = 0;
	bool new_assoc = !!(staging_rxon->filter_flags & RXON_FILTER_ASSOC_MSK);

	if (FUNC16(S_EXIT_PENDING, &il->status))
		return -EINVAL;

	if (!FUNC7(il))
		return -1;

	/* always get timestamp with Rx frame */
	staging_rxon->flags |= RXON_FLG_TSF2HOST_MSK;

	/* select antenna */
	staging_rxon->flags &= ~(RXON_FLG_DIS_DIV_MSK | RXON_FLG_ANT_SEL_MSK);
	staging_rxon->flags |= FUNC2(il);

	rc = FUNC4(il);
	if (rc) {
		FUNC1("Invalid RXON configuration.  Not committing.\n");
		return -EINVAL;
	}

	/* If we don't need to send a full RXON, we can use
	 * il3945_rxon_assoc_cmd which is used to reconfigure filter
	 * and other flags for the current radio configuration. */
	if (!FUNC6(il)) {
		rc = FUNC11(il);
		if (rc) {
			FUNC1("Error setting RXON_ASSOC "
			       "configuration (%d).\n", rc);
			return rc;
		}

		FUNC15(active_rxon, staging_rxon, sizeof(*active_rxon));
		/*
		 * We do not commit tx power settings while channel changing,
		 * do it now if tx power changed.
		 */
		FUNC13(il, il->tx_power_next, false);
		return 0;
	}

	/* If we are currently associated and the new config requires
	 * an RXON_ASSOC and the new config wants the associated mask enabled,
	 * we must clear the associated from the active configuration
	 * before we apply the new config */
	if (FUNC8(il) && new_assoc) {
		FUNC0("Toggling associated bit on current RXON\n");
		active_rxon->filter_flags &= ~RXON_FILTER_ASSOC_MSK;

		/*
		 * reserved4 and 5 could have been filled by the iwlcore code.
		 * Let's clear them before pushing to the 3945.
		 */
		active_rxon->reserved4 = 0;
		active_rxon->reserved5 = 0;
		rc = FUNC10(il, C_RXON, sizeof(struct il3945_rxon_cmd),
				     &il->active);

		/* If the mask clearing failed then we set
		 * active_rxon back to what it was previously */
		if (rc) {
			active_rxon->filter_flags |= RXON_FILTER_ASSOC_MSK;
			FUNC1("Error clearing ASSOC_MSK on current "
			       "configuration (%d).\n", rc);
			return rc;
		}
		FUNC5(il);
		FUNC9(il);
	}

	FUNC0("Sending RXON\n" "* with%s RXON_FILTER_ASSOC_MSK\n"
	       "* channel = %d\n" "* bssid = %pM\n", (new_assoc ? "" : "out"),
	       FUNC14(staging_rxon->channel), staging_rxon->bssid_addr);

	/*
	 * reserved4 and 5 could have been filled by the iwlcore code.
	 * Let's clear them before pushing to the 3945.
	 */
	staging_rxon->reserved4 = 0;
	staging_rxon->reserved5 = 0;

	FUNC12(il, !il3945_mod_params.sw_crypto);

	/* Apply the new configuration */
	rc = FUNC10(il, C_RXON, sizeof(struct il3945_rxon_cmd),
			     staging_rxon);
	if (rc) {
		FUNC1("Error setting new configuration (%d).\n", rc);
		return rc;
	}

	FUNC15(active_rxon, staging_rxon, sizeof(*active_rxon));

	if (!new_assoc) {
		FUNC5(il);
		FUNC9(il);
	}

	/* If we issue a new RXON command which required a tune then we must
	 * send a new TXPOWER command or we won't be able to Tx any frames */
	rc = FUNC13(il, il->tx_power_next, true);
	if (rc) {
		FUNC1("Error setting Tx power (%d).\n", rc);
		return rc;
	}

	/* Init the hardware's rate fallback order based on the band */
	rc = FUNC3(il);
	if (rc) {
		FUNC1("Error setting HW rate table: %02X\n", rc);
		return -EIO;
	}

	return 0;
}