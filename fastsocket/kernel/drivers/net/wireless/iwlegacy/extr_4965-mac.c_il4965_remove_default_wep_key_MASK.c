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
struct il_wep_key {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wep_keys; } ;
struct il_priv {TYPE_1__ _4965; int /*<<< orphan*/  mutex; } ;
struct ieee80211_key_conf {int keyidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct il_priv*,int) ; 
 scalar_t__ FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct il_priv *il,
			      struct ieee80211_key_conf *keyconf)
{
	int ret;
	int idx = keyconf->keyidx;

	FUNC3(&il->mutex);

	FUNC0("Removing default WEP key: idx=%d\n", idx);

	FUNC4(&il->_4965.wep_keys[idx], 0, sizeof(struct il_wep_key));
	if (FUNC2(il)) {
		FUNC0("Not sending C_WEPKEY command due to RFKILL.\n");
		/* but keys in device are clear anyway so return success */
		return 0;
	}
	ret = FUNC1(il, 1);
	FUNC0("Remove default WEP key: idx=%d ret=%d\n", idx, ret);

	return ret;
}