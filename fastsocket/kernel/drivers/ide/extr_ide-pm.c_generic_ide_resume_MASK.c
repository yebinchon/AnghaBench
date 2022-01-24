#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct request_pm_state {int /*<<< orphan*/  pm_state; int /*<<< orphan*/  pm_step; } ;
struct request {struct request_pm_state* special; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  cmd_type; } ;
struct ide_driver {int /*<<< orphan*/  (* resume ) (TYPE_1__*) ;} ;
struct device {scalar_t__ driver; } ;
typedef  int /*<<< orphan*/  rqpm ;
typedef  int /*<<< orphan*/  ide_hwif_t ;
struct TYPE_7__ {int dn; int /*<<< orphan*/  queue; int /*<<< orphan*/ * hwif; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_PM_START_RESUME ; 
 int /*<<< orphan*/  PM_EVENT_ON ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_PREEMPT ; 
 int /*<<< orphan*/  REQ_TYPE_PM_RESUME ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 TYPE_1__* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct request_pm_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 struct ide_driver* FUNC11 (scalar_t__) ; 

int FUNC12(struct device *dev)
{
	ide_drive_t *drive = FUNC3(dev);
	ide_drive_t *pair = FUNC7(drive);
	ide_hwif_t *hwif = drive->hwif;
	struct request *rq;
	struct request_pm_state rqpm;
	int err;

	if (FUNC8(hwif)) {
		/* call ACPI _PS0 / _STM only once */
		if ((drive->dn & 1) == 0 || pair == NULL) {
			FUNC6(hwif, 1);
			FUNC5(hwif);
		}

		FUNC4(drive);
	}

	FUNC9(&rqpm, 0, sizeof(rqpm));
	rq = FUNC1(drive->queue, READ, __GFP_WAIT);
	rq->cmd_type = REQ_TYPE_PM_RESUME;
	rq->cmd_flags |= REQ_PREEMPT;
	rq->special = &rqpm;
	rqpm.pm_step = IDE_PM_START_RESUME;
	rqpm.pm_state = PM_EVENT_ON;

	err = FUNC0(drive->queue, NULL, rq, 1);
	FUNC2(rq);

	if (err == 0 && dev->driver) {
		struct ide_driver *drv = FUNC11(dev->driver);

		if (drv->resume)
			drv->resume(drive);
	}

	return err;
}