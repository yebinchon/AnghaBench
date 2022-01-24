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
struct iwl_priv {int is_open; int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 struct iwl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  STATUS_READY ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_hw *hw)
{
	struct iwl_priv *priv = FUNC2(hw);
	int ret;

	FUNC1(priv, "enter\n");

	/* we should be verifying the device is ready to be opened */
	FUNC6(&priv->mutex);
	ret = FUNC4(priv);
	FUNC7(&priv->mutex);
	if (ret)
		return ret;

	FUNC0(priv, "Start UP work done.\n");

	/* Now we should be done, and the READY bit should be set. */
	if (FUNC3(!FUNC8(STATUS_READY, &priv->status)))
		ret = -EIO;

	FUNC5(priv);

	priv->is_open = 1;
	FUNC1(priv, "leave\n");
	return 0;
}