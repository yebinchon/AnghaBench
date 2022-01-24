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
struct il_priv {int /*<<< orphan*/  scan_check; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  status; TYPE_1__* ops; int /*<<< orphan*/  scan_start; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int (* request_scan ) (struct il_priv*,struct ieee80211_vif*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  IL_SCAN_CHECK_WATCHDOG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int /*<<< orphan*/  S_SCAN_ABORTING ; 
 int /*<<< orphan*/  S_SCAN_HW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct il_priv*,struct ieee80211_vif*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct il_priv *il, struct ieee80211_vif *vif)
{
	int ret;

	FUNC5(&il->mutex);

	FUNC2(&il->scan_check);

	if (!FUNC4(il)) {
		FUNC1("Request scan called when driver not ready.\n");
		return -EIO;
	}

	if (FUNC9(S_SCAN_HW, &il->status)) {
		FUNC0("Multiple concurrent scan requests in parallel.\n");
		return -EBUSY;
	}

	if (FUNC9(S_SCAN_ABORTING, &il->status)) {
		FUNC0("Scan request while abort pending.\n");
		return -EBUSY;
	}

	FUNC0("Starting scan...\n");

	FUNC7(S_SCANNING, &il->status);
	il->scan_start = jiffies;

	ret = il->ops->request_scan(il, vif);
	if (ret) {
		FUNC3(S_SCANNING, &il->status);
		return ret;
	}

	FUNC6(il->workqueue, &il->scan_check,
			   IL_SCAN_CHECK_WATCHDOG);

	return 0;
}