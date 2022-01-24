#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
struct net_device {struct airo_info* ml_priv; } ;
struct TYPE_5__ {scalar_t__ event; } ;
struct airo_info {int /*<<< orphan*/  sem; scalar_t__ jobs; scalar_t__ flags; TYPE_1__ power; int /*<<< orphan*/  thr_wait; scalar_t__ scan_timeout; scalar_t__ expires; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_FLASHING ; 
 int /*<<< orphan*/  JOB_AUTOWEP ; 
 int /*<<< orphan*/  JOB_DIE ; 
 int /*<<< orphan*/  JOB_EVENT ; 
 int /*<<< orphan*/  JOB_MIC ; 
 int /*<<< orphan*/  JOB_PROMISC ; 
 int /*<<< orphan*/  JOB_SCAN_RESULTS ; 
 int /*<<< orphan*/  JOB_STATS ; 
 int /*<<< orphan*/  JOB_WSTATS ; 
 int /*<<< orphan*/  JOB_XMIT ; 
 int /*<<< orphan*/  JOB_XMIT11 ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct airo_info*) ; 
 TYPE_2__* current ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned long FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct airo_info*) ; 
 unsigned long FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(void *data) {
	struct net_device *dev = data;
	struct airo_info *ai = dev->ml_priv;
	int locked;

	FUNC20();
	while(1) {
		/* make swsusp happy with our thread */
		FUNC24();

		if (FUNC21(JOB_DIE, &ai->jobs))
			break;

		if (ai->jobs) {
			locked = FUNC8(&ai->sem);
		} else {
			wait_queue_t wait;

			FUNC10(&wait, current);
			FUNC0(&ai->thr_wait, &wait);
			for (;;) {
				FUNC19(TASK_INTERRUPTIBLE);
				if (ai->jobs)
					break;
				if (ai->expires || ai->scan_timeout) {
					if (ai->scan_timeout &&
							FUNC22(jiffies,ai->scan_timeout)){
						FUNC18(JOB_SCAN_RESULTS, &ai->jobs);
						break;
					} else if (ai->expires &&
							FUNC22(jiffies,ai->expires)){
						FUNC18(JOB_AUTOWEP, &ai->jobs);
						break;
					}
					if (!FUNC11() &&
					    !FUNC9(current)) {
						unsigned long wake_at;
						if (!ai->expires || !ai->scan_timeout) {
							wake_at = FUNC12(ai->expires,
								ai->scan_timeout);
						} else {
							wake_at = FUNC14(ai->expires,
								ai->scan_timeout);
						}
						FUNC17(wake_at - jiffies);
						continue;
					}
				} else if (!FUNC11() &&
					   !FUNC9(current)) {
					FUNC16();
					continue;
				}
				break;
			}
			current->state = TASK_RUNNING;
			FUNC15(&ai->thr_wait, &wait);
			locked = 1;
		}

		if (locked)
			continue;

		if (FUNC21(JOB_DIE, &ai->jobs)) {
			FUNC25(&ai->sem);
			break;
		}

		if (ai->power.event || FUNC21(FLAG_FLASHING, &ai->flags)) {
			FUNC25(&ai->sem);
			continue;
		}

		if (FUNC21(JOB_XMIT, &ai->jobs))
			FUNC1(dev);
		else if (FUNC21(JOB_XMIT11, &ai->jobs))
			FUNC2(dev);
		else if (FUNC21(JOB_STATS, &ai->jobs))
			FUNC4(dev);
		else if (FUNC21(JOB_WSTATS, &ai->jobs))
			FUNC5(ai);
		else if (FUNC21(JOB_PROMISC, &ai->jobs))
			FUNC7(ai);
		else if (FUNC21(JOB_MIC, &ai->jobs))
			FUNC13(ai);
		else if (FUNC21(JOB_EVENT, &ai->jobs))
			FUNC6(dev);
		else if (FUNC21(JOB_AUTOWEP, &ai->jobs))
			FUNC23(dev);
		else if (FUNC21(JOB_SCAN_RESULTS, &ai->jobs))
			FUNC3(ai);
		else  /* Shouldn't get here, but we make sure to unlock */
			FUNC25(&ai->sem);
	}

	return 0;
}