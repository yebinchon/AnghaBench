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
struct unit_directory {int /*<<< orphan*/  device; } ;
struct sbp2_lu {int /*<<< orphan*/  shost; int /*<<< orphan*/  state; int /*<<< orphan*/  ne; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_BUS_BUSY ; 
 int EBUSY ; 
 int /*<<< orphan*/  SBP2LU_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sbp2_lu* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sbp2_lu*,int) ; 
 scalar_t__ FUNC5 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbp2_lu*) ; 
 scalar_t__ FUNC8 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbp2_lu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct unit_directory *ud)
{
	struct sbp2_lu *lu = FUNC2(&ud->device);

	if (FUNC8(lu) != 0) {
		/*
		 * Reconnect failed.  If another bus reset happened,
		 * let nodemgr proceed and call sbp2_update again later
		 * (or sbp2_remove if this node went away).
		 */
		if (!FUNC3(lu->ne))
			return 0;
		/*
		 * Or the target rejected the reconnect because we weren't
		 * fast enough.  Try a regular login, but first log out
		 * just in case of any weirdness.
		 */
		FUNC6(lu);

		if (FUNC5(lu) != 0) {
			if (!FUNC3(lu->ne))
				return 0;

			/* Maybe another initiator won the login. */
			FUNC0("Failed to reconnect to sbp2 device!");
			return -EBUSY;
		}
	}

	FUNC9(lu);
	FUNC4(lu, 1);
	FUNC7(lu);

	/* Complete any pending commands with busy (so they get retried)
	 * and remove them from our queue. */
	FUNC10(lu, DID_BUS_BUSY);

	/* Accept new commands unless there was another bus reset in the
	 * meantime. */
	if (FUNC3(lu->ne)) {
		FUNC1(&lu->state, SBP2LU_STATE_RUNNING);
		FUNC11(lu->shost);
	}
	return 0;
}