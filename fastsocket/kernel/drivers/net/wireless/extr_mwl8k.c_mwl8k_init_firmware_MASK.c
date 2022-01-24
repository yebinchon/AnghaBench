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
struct mwl8k_priv {int dummy; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int MAX_RESTART_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl8k_priv*) ; 
 int FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl8k_priv*) ; 
 int FUNC4 (struct mwl8k_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw, char *fw_image,
			       bool nowait)
{
	struct mwl8k_priv *priv = hw->priv;
	int rc;
	int count = MAX_RESTART_ATTEMPTS;

retry:
	/* Reset firmware and hardware */
	FUNC1(priv);

	/* Ask userland hotplug daemon for the device firmware */
	rc = FUNC4(priv, fw_image, nowait);
	if (rc) {
		FUNC5(hw->wiphy, "Firmware files not found\n");
		return rc;
	}

	if (nowait)
		return rc;

	/* Load firmware into hardware */
	rc = FUNC2(hw);
	if (rc)
		FUNC5(hw->wiphy, "Cannot start firmware\n");

	/* Reclaim memory once firmware is successfully loaded */
	FUNC3(priv);

	if (rc && count) {
		/* FW did not start successfully;
		 * lets try one more time
		 */
		count--;
		FUNC5(hw->wiphy, "Trying to reload the firmware again\n");
		FUNC0(20);
		goto retry;
	}

	return rc;
}