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
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct sas_task {int /*<<< orphan*/  list; struct domain_device* dev; struct scsi_cmnd* uldd_task; } ;
struct sas_ha_struct {int /*<<< orphan*/  state; } ;
struct domain_device {int /*<<< orphan*/  done_lock; TYPE_1__* port; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SAS_HA_FROZEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,struct sas_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct sas_task *task)
{
	struct scsi_cmnd *sc = task->uldd_task;
	struct domain_device *dev = task->dev;
	struct sas_ha_struct *ha = dev->port->ha;
	unsigned long flags;

	FUNC5(&dev->done_lock, flags);
	if (FUNC8(SAS_HA_FROZEN, &ha->state))
		task = NULL;
	else
		FUNC0(sc, NULL);
	FUNC6(&dev->done_lock, flags);

	if (FUNC9(!task)) {
		/* task will be completed by the error handler */
		FUNC1("task done but aborted\n");
		return;
	}

	if (FUNC9(!sc)) {
		FUNC1("task_done called with non existing SCSI cmnd!\n");
		FUNC2(&task->list);
		FUNC4(task);
		return;
	}

	FUNC3(sc, task);
	sc->scsi_done(sc);
}