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
struct scsi_core {int /*<<< orphan*/  queue_thread; TYPE_1__* shost; int /*<<< orphan*/  task_queue; scalar_t__ task_queue_size; int /*<<< orphan*/  task_queue_flush; int /*<<< orphan*/  task_queue_lock; } ;
struct sas_ha_struct {struct scsi_core core; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sas_ha_struct*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sas_queue_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct sas_ha_struct *sas_ha)
{
	struct scsi_core *core = &sas_ha->core;

	FUNC5(&core->task_queue_lock);
	FUNC4(&core->task_queue_flush);
	core->task_queue_size = 0;
	FUNC0(&core->task_queue);

	core->queue_thread = FUNC3(sas_queue_thread, sas_ha,
					 "sas_queue_%d", core->shost->host_no);
	if (FUNC1(core->queue_thread))
		return FUNC2(core->queue_thread);
	return 0;
}