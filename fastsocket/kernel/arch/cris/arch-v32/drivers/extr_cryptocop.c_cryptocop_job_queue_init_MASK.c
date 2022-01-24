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
typedef  scalar_t__ cryptocop_queue_priority ;
struct TYPE_2__ {int /*<<< orphan*/  jobs; scalar_t__ prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cryptocop_completed_jobs ; 
 TYPE_1__* cryptocop_job_queues ; 
 int cryptocop_prio_no_prios ; 

__attribute__((used)) static int FUNC1(void)
{
	int i;

	FUNC0(&cryptocop_completed_jobs);

	for (i = 0; i < cryptocop_prio_no_prios; i++){
		cryptocop_job_queues[i].prio = (cryptocop_queue_priority)i;
		FUNC0(&cryptocop_job_queues[i].jobs);
	}
	return 0;
}