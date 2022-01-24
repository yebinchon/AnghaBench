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
struct iwl_priv {scalar_t__ scan_type; int /*<<< orphan*/ * scan_request; int /*<<< orphan*/ * scan_vif; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 scalar_t__ IWL_SCAN_NORMAL ; 
 scalar_t__ IWL_SCAN_ROC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*) ; 

__attribute__((used)) static void FUNC3(struct iwl_priv *priv, bool aborted)
{
	/* check if scan was requested from mac80211 */
	if (priv->scan_request) {
		FUNC0(priv, "Complete scan in mac80211\n");
		FUNC1(priv->hw, aborted);
	}

	if (priv->scan_type == IWL_SCAN_ROC)
		FUNC2(priv);

	priv->scan_type = IWL_SCAN_NORMAL;
	priv->scan_vif = NULL;
	priv->scan_request = NULL;
}