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
struct ucb1x00_ts {int /*<<< orphan*/ * rtask; int /*<<< orphan*/  irq_wait; scalar_t__ restart; int /*<<< orphan*/  ucb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HZ ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  UCB_FALLING ; 
 int /*<<< orphan*/  UCB_IRQ_TSPX ; 
 int /*<<< orphan*/  UCB_RISING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  FUNC16 (struct ucb1x00_ts*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct ucb1x00_ts*) ; 
 scalar_t__ FUNC18 (struct ucb1x00_ts*) ; 
 unsigned int FUNC19 (struct ucb1x00_ts*) ; 
 unsigned int FUNC20 (struct ucb1x00_ts*) ; 
 unsigned int FUNC21 (struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC22(void *_ts)
{
	struct ucb1x00_ts *ts = _ts;
	FUNC0(wait, current);
	int valid = 0;

	FUNC8();
	FUNC1(&ts->irq_wait, &wait);
	while (!FUNC2()) {
		unsigned int x, y, p;
		signed long timeout;

		ts->restart = 0;

		FUNC11(ts->ucb);

		x = FUNC20(ts);
		y = FUNC21(ts);
		p = FUNC19(ts);

		/*
		 * Switch back to interrupt mode.
		 */
		FUNC17(ts);
		FUNC10(ts->ucb);

		FUNC4(10);

		FUNC13(ts->ucb);


		if (FUNC18(ts)) {
			FUNC7(TASK_INTERRUPTIBLE);

			FUNC14(ts->ucb, UCB_IRQ_TSPX, FUNC3() ? UCB_RISING : UCB_FALLING);
			FUNC12(ts->ucb);

			/*
			 * If we spat out a valid sample set last time,
			 * spit out a "pen off" sample here.
			 */
			if (valid) {
				FUNC15(ts);
				valid = 0;
			}

			timeout = MAX_SCHEDULE_TIMEOUT;
		} else {
			FUNC12(ts->ucb);

			/*
			 * Filtering is policy.  Policy belongs in user
			 * space.  We therefore leave it to user space
			 * to do any filtering they please.
			 */
			if (!ts->restart) {
				FUNC16(ts, p, x, y);
				valid = 1;
			}

			FUNC7(TASK_INTERRUPTIBLE);
			timeout = HZ / 100;
		}

		FUNC9();

		FUNC6(timeout);
	}

	FUNC5(&ts->irq_wait, &wait);

	ts->rtask = NULL;
	return 0;
}