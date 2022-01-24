#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cryptocop_prio_job {int /*<<< orphan*/  node; } ;
struct cryptocop_operation {int /*<<< orphan*/  cb; } ;
typedef  size_t cryptocop_queue_priority ;
struct TYPE_2__ {int /*<<< orphan*/  jobs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cryptocop_job_queue_lock ; 
 TYPE_1__* cryptocop_job_queues ; 
 int FUNC3 (struct cryptocop_prio_job**,struct cryptocop_operation*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(cryptocop_queue_priority prio, struct cryptocop_operation *operation)
{
	int                           ret;
	struct cryptocop_prio_job     *pj = NULL;
	unsigned long int             flags;

	FUNC0(FUNC6("cryptocop_job_queue_insert(%d, 0x%p)\n", prio, operation));

	if (!operation || !operation->cb){
		FUNC1(FUNC6("cryptocop_job_queue_insert oper=0x%p, NULL operation or callback\n", operation));
		return -EINVAL;
	}

	if ((ret = FUNC3(&pj, operation)) != 0){
		FUNC1(FUNC6("cryptocop_job_queue_insert: job setup failed\n"));
		return ret;
	}
	FUNC2(pj != NULL);

	FUNC7(&cryptocop_job_queue_lock, flags);
	FUNC5(&pj->node, &cryptocop_job_queues[prio].jobs);
	FUNC8(&cryptocop_job_queue_lock, flags);

	/* Make sure a job is running */
	FUNC4();
	return 0;
}