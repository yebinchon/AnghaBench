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
struct ieee80211_vif {scalar_t__ type; int p2p; int /*<<< orphan*/  addr; } ;
struct ath_common {int /*<<< orphan*/  macaddr; } ;
struct ar9170 {int disable_offload; int rx_software_decryption; struct ath_common common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ar9170 *ar,
				   struct ieee80211_vif *vif)
{
	struct ath_common *common = &ar->common;
	int err;

	if (!vif) {
		FUNC1(FUNC0(ar));
		return 0;
	}

	FUNC3(common->macaddr, vif->addr, ETH_ALEN);

	/* We have to fall back to software crypto, whenever
	 * the user choose to participates in an IBSS. HW
	 * offload for IBSS RSN is not supported by this driver.
	 *
	 * NOTE: If the previous main interface has already
	 * disabled hw crypto offload, we have to keep this
	 * previous disable_offload setting as it was.
	 * Altough ideally, we should notify mac80211 and tell
	 * it to forget about any HW crypto offload for now.
	 */
	ar->disable_offload |= ((vif->type != NL80211_IFTYPE_STATION) &&
	    (vif->type != NL80211_IFTYPE_AP));

	/* While the driver supports HW offload in a single
	 * P2P client configuration, it doesn't support HW
	 * offload in the favourit, concurrent P2P GO+CLIENT
	 * configuration. Hence, HW offload will always be
	 * disabled for P2P.
	 */
	ar->disable_offload |= vif->p2p;

	ar->rx_software_decryption = ar->disable_offload;

	err = FUNC2(ar);
	return err;
}