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
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int /*<<< orphan*/  STATUS_SCAN_ABORTING ; 
 int /*<<< orphan*/  STATUS_SCAN_COMPLETE ; 
 int /*<<< orphan*/  STATUS_SCAN_HW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct iwl_priv *priv)
{
	FUNC3(&priv->mutex);

	if (!FUNC4(STATUS_SCANNING, &priv->status)) {
		FUNC0(priv, "Forcing scan end while not scanning\n");
		return;
	}

	FUNC0(priv, "Forcing scan end\n");
	FUNC1(STATUS_SCANNING, &priv->status);
	FUNC1(STATUS_SCAN_HW, &priv->status);
	FUNC1(STATUS_SCAN_ABORTING, &priv->status);
	FUNC1(STATUS_SCAN_COMPLETE, &priv->status);
	FUNC2(priv, true);
}