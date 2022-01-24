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
struct il_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  scan_band; struct ieee80211_vif* scan_vif; struct cfg80211_scan_request* scan_request; int /*<<< orphan*/  status; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; TYPE_1__** channels; } ;
struct TYPE_2__ {int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int FUNC3 (struct il_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
	       struct cfg80211_scan_request *req)
{
	struct il_priv *il = hw->priv;
	int ret;

	if (req->n_channels == 0) {
		FUNC2("Can not scan on no channels.\n");
		return -EINVAL;
	}

	FUNC4(&il->mutex);
	FUNC0("enter\n");

	if (FUNC6(S_SCANNING, &il->status)) {
		FUNC1("Scan already in progress.\n");
		ret = -EAGAIN;
		goto out_unlock;
	}

	/* mac80211 will only ask for one band at a time */
	il->scan_request = req;
	il->scan_vif = vif;
	il->scan_band = req->channels[0]->band;

	ret = FUNC3(il, vif);

out_unlock:
	FUNC0("leave ret %d\n", ret);
	FUNC5(&il->mutex);

	return ret;
}