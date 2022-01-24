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
struct il_priv {int is_open; int /*<<< orphan*/  status; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_READY ; 
 int /*<<< orphan*/  UCODE_READY_TIMEOUT ; 
 int FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 scalar_t__ FUNC5 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(struct ieee80211_hw *hw)
{
	struct il_priv *il = hw->priv;
	int ret;

	FUNC1("enter\n");

	/* we should be verifying the device is ready to be opened */
	FUNC7(&il->mutex);
	ret = FUNC3(il);
	FUNC8(&il->mutex);

	if (ret)
		return ret;

	if (FUNC5(il))
		goto out;

	FUNC0("Start UP work done.\n");

	/* Wait for START_ALIVE from Run Time ucode. Otherwise callbacks from
	 * mac80211 will not be run successfully. */
	ret = FUNC10(il->wait_command_queue,
				 FUNC9(S_READY, &il->status),
				 UCODE_READY_TIMEOUT);
	if (!ret) {
		if (!FUNC9(S_READY, &il->status)) {
			FUNC2("START_ALIVE timeout after %dms.\n",
				FUNC6(UCODE_READY_TIMEOUT));
			return -ETIMEDOUT;
		}
	}

	FUNC4(il);

out:
	il->is_open = 1;
	FUNC1("leave\n");
	return 0;
}