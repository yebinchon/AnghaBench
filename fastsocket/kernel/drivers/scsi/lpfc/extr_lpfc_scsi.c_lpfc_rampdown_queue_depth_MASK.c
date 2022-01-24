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
typedef  int uint32_t ;
struct lpfc_hba {scalar_t__ last_ramp_down_time; TYPE_1__* pport; int /*<<< orphan*/  hbalock; scalar_t__ last_rsrc_error_time; int /*<<< orphan*/  num_rsrc_err; } ;
struct TYPE_2__ {int work_port_events; int /*<<< orphan*/  work_port_lock; } ;

/* Variables and functions */
 scalar_t__ QUEUE_RAMP_DOWN_INTERVAL ; 
 int WORKER_RAMP_DOWN_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct lpfc_hba *phba)
{
	unsigned long flags;
	uint32_t evt_posted;

	FUNC2(&phba->hbalock, flags);
	FUNC0(&phba->num_rsrc_err);
	phba->last_rsrc_error_time = jiffies;

	if ((phba->last_ramp_down_time + QUEUE_RAMP_DOWN_INTERVAL) > jiffies) {
		FUNC3(&phba->hbalock, flags);
		return;
	}

	phba->last_ramp_down_time = jiffies;

	FUNC3(&phba->hbalock, flags);

	FUNC2(&phba->pport->work_port_lock, flags);
	evt_posted = phba->pport->work_port_events & WORKER_RAMP_DOWN_QUEUE;
	if (!evt_posted)
		phba->pport->work_port_events |= WORKER_RAMP_DOWN_QUEUE;
	FUNC3(&phba->pport->work_port_lock, flags);

	if (!evt_posted)
		FUNC1(phba);
	return;
}