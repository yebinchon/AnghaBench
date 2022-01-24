#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_core {scalar_t__ task_queue_size; int /*<<< orphan*/  queue_thread; int /*<<< orphan*/  task_queue_lock; int /*<<< orphan*/  task_queue; } ;
struct sas_task {int /*<<< orphan*/  list; TYPE_2__* dev; } ;
struct sas_ha_struct {scalar_t__ lldd_queue_size; struct scsi_core core; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SAS_QUEUE_FULL ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct sas_task *task)
{
	struct sas_ha_struct *sas_ha = task->dev->port->ha;
	struct scsi_core *core = &sas_ha->core;
	unsigned long flags;
	FUNC0(list);

	FUNC2(&core->task_queue_lock, flags);
	if (sas_ha->lldd_queue_size < core->task_queue_size + 1) {
		FUNC3(&core->task_queue_lock, flags);
		return -SAS_QUEUE_FULL;
	}
	FUNC1(&task->list, &core->task_queue);
	core->task_queue_size += 1;
	FUNC3(&core->task_queue_lock, flags);
	FUNC4(core->queue_thread);

	return 0;
}