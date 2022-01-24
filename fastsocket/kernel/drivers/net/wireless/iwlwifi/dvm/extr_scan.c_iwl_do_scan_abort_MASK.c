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
struct iwl_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int /*<<< orphan*/  STATUS_SCAN_ABORTING ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*) ; 
 int FUNC2 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct iwl_priv *priv)
{
	int ret;

	FUNC3(&priv->mutex);

	if (!FUNC5(STATUS_SCANNING, &priv->status)) {
		FUNC0(priv, "Not performing scan to abort\n");
		return;
	}

	if (FUNC4(STATUS_SCAN_ABORTING, &priv->status)) {
		FUNC0(priv, "Scan abort in progress\n");
		return;
	}

	ret = FUNC2(priv);
	if (ret) {
		FUNC0(priv, "Send scan abort failed %d\n", ret);
		FUNC1(priv);
	} else
		FUNC0(priv, "Successfully send scan abort\n");
}