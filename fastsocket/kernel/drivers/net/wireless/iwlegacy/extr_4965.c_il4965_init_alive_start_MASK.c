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
struct il_priv {int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  temperature; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 scalar_t__ FUNC2 (struct il_priv*) ; 
 scalar_t__ FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct il_priv *il)
{
	/* Bootstrap uCode has loaded initialize uCode ... verify inst image.
	 * This is a paranoid check, because we would not have gotten the
	 * "initialize" alive if code weren't properly loaded.  */
	if (FUNC3(il)) {
		/* Runtime instruction load was bad;
		 * take it all the way back down so we can try again */
		FUNC0("Bad \"initialize\" uCode load.\n");
		goto restart;
	}

	/* Calculate temperature */
	il->temperature = FUNC1(il);

	/* Send pointers to protocol/runtime uCode image ... init code will
	 * load and launch runtime uCode, which will send us another "Alive"
	 * notification. */
	FUNC0("Initialization Alive received.\n");
	if (FUNC2(il)) {
		/* Runtime instruction load won't happen;
		 * take it all the way back down so we can try again */
		FUNC0("Couldn't set up uCode pointers.\n");
		goto restart;
	}
	return;

restart:
	FUNC4(il->workqueue, &il->restart);
}