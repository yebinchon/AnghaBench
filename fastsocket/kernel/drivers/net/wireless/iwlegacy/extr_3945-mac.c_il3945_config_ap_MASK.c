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
struct TYPE_4__ {int flags; int /*<<< orphan*/  filter_flags; scalar_t__ assoc_id; } ;
struct il_priv {TYPE_2__ staging; int /*<<< orphan*/  status; struct ieee80211_vif* vif; } ;
struct TYPE_3__ {scalar_t__ use_short_slot; scalar_t__ use_short_preamble; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RXON_FILTER_ASSOC_MSK ; 
 int RXON_FLG_BAND_24G_MSK ; 
 int RXON_FLG_SHORT_PREAMBLE_MSK ; 
 int RXON_FLG_SHORT_SLOT_MSK ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int FUNC4 (struct il_priv*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(struct il_priv *il)
{
	struct ieee80211_vif *vif = il->vif;
	int rc = 0;

	if (FUNC5(S_EXIT_PENDING, &il->status))
		return;

	/* The following should be done only at AP bring up */
	if (!(FUNC3(il))) {

		/* RXON - unassoc (to set timing command) */
		il->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;
		FUNC1(il);

		/* RXON Timing */
		rc = FUNC4(il);
		if (rc)
			FUNC0("C_RXON_TIMING failed - "
				"Attempting to continue.\n");

		il->staging.assoc_id = 0;

		if (vif->bss_conf.use_short_preamble)
			il->staging.flags |= RXON_FLG_SHORT_PREAMBLE_MSK;
		else
			il->staging.flags &= ~RXON_FLG_SHORT_PREAMBLE_MSK;

		if (il->staging.flags & RXON_FLG_BAND_24G_MSK) {
			if (vif->bss_conf.use_short_slot)
				il->staging.flags |= RXON_FLG_SHORT_SLOT_MSK;
			else
				il->staging.flags &= ~RXON_FLG_SHORT_SLOT_MSK;
		}
		/* restore RXON assoc */
		il->staging.filter_flags |= RXON_FILTER_ASSOC_MSK;
		FUNC1(il);
	}
	FUNC2(il);
}