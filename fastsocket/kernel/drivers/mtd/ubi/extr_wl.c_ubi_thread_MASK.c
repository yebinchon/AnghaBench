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
struct ubi_device {int /*<<< orphan*/  bgt_name; scalar_t__ thread_enabled; int /*<<< orphan*/  wl_lock; scalar_t__ ro_mode; int /*<<< orphan*/  works; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  WL_MAX_FAILURES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ubi_device*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*) ; 

int FUNC15(void *u)
{
	int failures = 0;
	struct ubi_device *ubi = u;

	FUNC13("background thread \"%s\" started, PID %d",
		ubi->bgt_name, FUNC10(current));

	FUNC7();
	for (;;) {
		int err;

		if (FUNC3())
			break;

		if (FUNC11())
			continue;

		FUNC8(&ubi->wl_lock);
		if (FUNC4(&ubi->works) || ubi->ro_mode ||
			       !ubi->thread_enabled) {
			FUNC6(TASK_INTERRUPTIBLE);
			FUNC9(&ubi->wl_lock);
			FUNC5();
			continue;
		}
		FUNC9(&ubi->wl_lock);

		err = FUNC2(ubi);
		if (err) {
			FUNC12("%s: work failed with error code %d",
				ubi->bgt_name, err);
			if (failures++ > WL_MAX_FAILURES) {
				/*
				 * Too many failures, disable the thread and
				 * switch to read-only mode.
				 */
				FUNC13("%s: %d consecutive failures",
					ubi->bgt_name, WL_MAX_FAILURES);
				FUNC14(ubi);
				ubi->thread_enabled = 0;
				continue;
			}
		} else
			failures = 0;

		FUNC0();
	}

	FUNC1("background thread \"%s\" is killed", ubi->bgt_name);
	return 0;
}