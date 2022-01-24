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
struct ucb1400_ts {int /*<<< orphan*/ * ts_task; int /*<<< orphan*/  ts_idev; scalar_t__ ts_restart; scalar_t__ irq_pending; int /*<<< orphan*/  ts_wait; int /*<<< orphan*/  ac97; } ;
struct task_struct {int dummy; } ;
struct sched_param {int sched_priority; } ;

/* Variables and functions */
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 struct task_struct* current ; 
 scalar_t__ FUNC0 () ; 
 long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ucb1400_ts*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (struct ucb1400_ts*) ; 
 unsigned int FUNC14 (struct ucb1400_ts*) ; 
 unsigned int FUNC15 (struct ucb1400_ts*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,long) ; 

__attribute__((used)) static int FUNC17(void *_ucb)
{
	struct ucb1400_ts *ucb = _ucb;
	struct task_struct *tsk = current;
	int valid = 0;
	struct sched_param param = { .sched_priority = 1 };

	FUNC3(tsk, SCHED_FIFO, &param);

	FUNC4();
	while (!FUNC0()) {
		unsigned int x, y, p;
		long timeout;

		ucb->ts_restart = 0;

		if (ucb->irq_pending) {
			ucb->irq_pending = 0;
			FUNC7(ucb);
		}

		FUNC6(ucb->ac97);
		x = FUNC14(ucb);
		y = FUNC15(ucb);
		p = FUNC13(ucb);
		FUNC5(ucb->ac97);

		/* Switch back to interrupt mode. */
		FUNC11(ucb->ac97);

		FUNC2(10);

		if (FUNC12(ucb->ac97)) {
			FUNC10(ucb->ac97);

			/*
			 * If we spat out a valid sample set last time,
			 * spit out a "pen off" sample here.
			 */
			if (valid) {
				FUNC8(ucb->ts_idev);
				valid = 0;
			}

			timeout = MAX_SCHEDULE_TIMEOUT;
		} else {
			valid = 1;
			FUNC9(ucb->ts_idev, p, x, y);
			timeout = FUNC1(10);
		}

		FUNC16(ucb->ts_wait,
			ucb->irq_pending || ucb->ts_restart ||
			FUNC0(), timeout);
	}

	/* Send the "pen off" if we are stopping with the pen still active */
	if (valid)
		FUNC8(ucb->ts_idev);

	ucb->ts_task = NULL;
	return 0;
}