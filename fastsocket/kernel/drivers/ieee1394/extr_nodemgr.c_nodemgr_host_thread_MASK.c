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
struct hpsb_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct hpsb_host*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsb_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct hpsb_host*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hpsb_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct hpsb_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 () ; 

__attribute__((used)) static int FUNC16(void *data)
{
	struct hpsb_host *host = data;
	unsigned int g, generation = 0;
	int i, reset_cycles = 0;

	FUNC14();
	/* Setup our device-model entries */
	FUNC6(host);

	for (;;) {
		/* Sleep until next bus reset */
		FUNC13(TASK_INTERRUPTIBLE);
		if (FUNC2(host) == generation &&
		    !FUNC3())
			FUNC12();
		FUNC1(TASK_RUNNING);

		/* Thread may have been woken up to freeze or to exit */
		if (FUNC15())
			continue;
		if (FUNC3())
			goto exit;

		/* Pause for 1/4 second in 1/16 second intervals,
		 * to make sure things settle down. */
		g = FUNC2(host);
		for (i = 0; i < 4 ; i++) {
			FUNC4(63);
			FUNC15();
			if (FUNC3())
				goto exit;

			/* Now get the generation in which the node ID's we collect
			 * are valid.  During the bus scan we will use this generation
			 * for the read transactions, so that if another reset occurs
			 * during the scan the transactions will fail instead of
			 * returning bogus data. */
			generation = FUNC2(host);

			/* If we get a reset before we are done waiting, then
			 * start the waiting over again */
			if (generation != g)
				g = generation, i = 0;
		}

		if (!FUNC5(host, reset_cycles) ||
		    !FUNC7(host, reset_cycles)) {
			reset_cycles++;
			continue;
		}
		reset_cycles = 0;

		/* Scan our nodes to get the bus options and create node
		 * entries. This does not do the sysfs stuff, since that
		 * would trigger uevents and such, which is a bad idea at
		 * this point. */
		FUNC9(host, generation);

		/* This actually does the full probe, with sysfs
		 * registration. */
		if (!FUNC8(host, generation))
			continue;

		/* Update some of our sysfs symlinks */
		FUNC11(host);

		/* Sleep 3 seconds */
		for (i = 3000/200; i; i--) {
			FUNC4(200);
			FUNC15();
			if (FUNC3())
				goto exit;

			if (generation != FUNC2(host))
				break;
		}
		/* Remove nodes which are gone, unless a bus reset happened */
		if (!i)
			FUNC10(host);
	}
exit:
	FUNC0("NodeMgr: Exiting thread");
	return 0;
}