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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  falcon_fairness_wait ; 
 int falcon_got_lock ; 
 int /*<<< orphan*/  falcon_try_wait ; 
 int falcon_trying_lock ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  scsi_falcon_intr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
	unsigned long flags;

	if (FUNC0())
		return;

	FUNC3(flags);

	while (!FUNC1() && falcon_got_lock && FUNC7())
		FUNC5(&falcon_fairness_wait);

	while (!falcon_got_lock) {
		if (FUNC1())
			FUNC4("Falcon SCSI hasn't ST-DMA lock in interrupt");
		if (!falcon_trying_lock) {
			falcon_trying_lock = 1;
			FUNC6(scsi_falcon_intr, NULL);
			falcon_got_lock = 1;
			falcon_trying_lock = 0;
			FUNC8(&falcon_try_wait);
		} else {
			FUNC5(&falcon_try_wait);
		}
	}

	FUNC2(flags);
	if (!falcon_got_lock)
		FUNC4("Falcon SCSI: someone stole the lock :-(\n");
}