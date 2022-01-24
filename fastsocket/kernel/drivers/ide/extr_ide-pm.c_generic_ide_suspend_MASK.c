#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct request_pm_state {scalar_t__ pm_state; int /*<<< orphan*/  pm_step; } ;
struct request {struct request_pm_state* special; int /*<<< orphan*/  cmd_type; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  rqpm ;
struct TYPE_7__ {scalar_t__ event; } ;
typedef  TYPE_1__ pm_message_t ;
typedef  int /*<<< orphan*/  ide_hwif_t ;
struct TYPE_8__ {int dn; int /*<<< orphan*/  queue; int /*<<< orphan*/ * hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_PM_START_SUSPEND ; 
 scalar_t__ PM_EVENT_FREEZE ; 
 scalar_t__ PM_EVENT_PRETHAW ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_TYPE_PM_SUSPEND ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 TYPE_2__* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct request_pm_state*,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct device *dev, pm_message_t mesg)
{
	ide_drive_t *drive = FUNC3(dev);
	ide_drive_t *pair = FUNC6(drive);
	ide_hwif_t *hwif = drive->hwif;
	struct request *rq;
	struct request_pm_state rqpm;
	int ret;

	if (FUNC7(hwif)) {
		/* call ACPI _GTM only once */
		if ((drive->dn & 1) == 0 || pair == NULL)
			FUNC4(hwif);
	}

	FUNC8(&rqpm, 0, sizeof(rqpm));
	rq = FUNC1(drive->queue, READ, __GFP_WAIT);
	rq->cmd_type = REQ_TYPE_PM_SUSPEND;
	rq->special = &rqpm;
	rqpm.pm_step = IDE_PM_START_SUSPEND;
	if (mesg.event == PM_EVENT_PRETHAW)
		mesg.event = PM_EVENT_FREEZE;
	rqpm.pm_state = mesg.event;

	ret = FUNC0(drive->queue, NULL, rq, 0);
	FUNC2(rq);

	if (ret == 0 && FUNC7(hwif)) {
		/* call ACPI _PS3 only after both devices are suspended */
		if ((drive->dn & 1) || pair == NULL)
			FUNC5(hwif, 0);
	}

	return ret;
}