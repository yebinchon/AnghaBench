#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rfkill_poll; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct il_priv {int is_open; TYPE_2__ _3945; int /*<<< orphan*/  status; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  mutex; TYPE_1__ ucode_code; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  S_READY ; 
 int /*<<< orphan*/  UCODE_READY_TIMEOUT ; 
 int FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct il_priv*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct ieee80211_hw *hw)
{
	struct il_priv *il = hw->priv;
	int ret;

	/* we should be verifying the device is ready to be opened */
	FUNC7(&il->mutex);
	FUNC1("enter\n");

	/* fetch ucode file from disk, alloc and copy to bus-master buffers ...
	 * ucode filename and max sizes are card-specific. */

	if (!il->ucode_code.len) {
		ret = FUNC5(il);
		if (ret) {
			FUNC2("Could not read microcode: %d\n", ret);
			FUNC8(&il->mutex);
			goto out_release_irq;
		}
	}

	ret = FUNC3(il);

	FUNC8(&il->mutex);

	if (ret)
		goto out_release_irq;

	FUNC0("Start UP work.\n");

	/* Wait for START_ALIVE from ucode. Otherwise callbacks from
	 * mac80211 will not be run successfully. */
	ret = FUNC10(il->wait_command_queue,
				 FUNC9(S_READY, &il->status),
				 UCODE_READY_TIMEOUT);
	if (!ret) {
		if (!FUNC9(S_READY, &il->status)) {
			FUNC2("Wait for START_ALIVE timeout after %dms.\n",
			       FUNC6(UCODE_READY_TIMEOUT));
			ret = -ETIMEDOUT;
			goto out_release_irq;
		}
	}

	/* ucode is running and will send rfkill notifications,
	 * no need to poll the killswitch state anymore */
	FUNC4(&il->_3945.rfkill_poll);

	il->is_open = 1;
	FUNC1("leave\n");
	return 0;

out_release_irq:
	il->is_open = 0;
	FUNC1("leave - failed\n");
	return ret;
}