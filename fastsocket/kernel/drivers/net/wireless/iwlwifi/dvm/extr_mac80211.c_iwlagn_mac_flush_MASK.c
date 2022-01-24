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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  trans; int /*<<< orphan*/  status; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*) ; 
 struct iwl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 scalar_t__ FUNC4 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct iwl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw, u32 queues, bool drop)
{
	struct iwl_priv *priv = FUNC3(hw);

	FUNC7(&priv->mutex);
	FUNC0(priv, "enter\n");

	if (FUNC9(STATUS_EXIT_PENDING, &priv->status)) {
		FUNC1(priv, "Aborting flush due to device shutdown\n");
		goto done;
	}
	if (FUNC4(priv)) {
		FUNC1(priv, "Aborting flush due to RF Kill\n");
		goto done;
	}

	/*
	 * mac80211 will not push any more frames for transmit
	 * until the flush is completed
	 */
	if (drop) {
		FUNC0(priv, "send flush command\n");
		if (FUNC6(priv, 0)) {
			FUNC2(priv, "flush request fail\n");
			goto done;
		}
	}
	FUNC0(priv, "wait transmit/flush all frames\n");
	FUNC5(priv->trans);
done:
	FUNC8(&priv->mutex);
	FUNC0(priv, "leave\n");
}