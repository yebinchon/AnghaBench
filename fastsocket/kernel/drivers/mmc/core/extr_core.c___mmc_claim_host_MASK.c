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
struct mmc_host {int claimed; scalar_t__ claimer; int claim_cnt; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct mmc_host *host, atomic_t *abort)
{
	FUNC0(wait, current);
	unsigned long flags;
	int stop;

	FUNC3();

	FUNC1(&host->wq, &wait);
	FUNC8(&host->lock, flags);
	while (1) {
		FUNC7(TASK_UNINTERRUPTIBLE);
		stop = abort ? FUNC2(abort) : 0;
		if (stop || !host->claimed || host->claimer == current)
			break;
		FUNC9(&host->lock, flags);
		FUNC6();
		FUNC8(&host->lock, flags);
	}
	FUNC7(TASK_RUNNING);
	if (!stop) {
		host->claimed = 1;
		host->claimer = current;
		host->claim_cnt += 1;
	} else
		FUNC10(&host->wq);
	FUNC9(&host->lock, flags);
	FUNC5(&host->wq, &wait);
	if (!stop)
		FUNC4(host);
	return stop;
}