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
struct il_priv {int /*<<< orphan*/ * scan_request; int /*<<< orphan*/ * scan_vif; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct il_priv *il, bool aborted)
{
	/* check if scan was requested from mac80211 */
	if (il->scan_request) {
		FUNC0("Complete scan in mac80211\n");
		FUNC1(il->hw, aborted);
	}

	il->scan_vif = NULL;
	il->scan_request = NULL;
}