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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {int state; scalar_t__ reap_ref; int /*<<< orphan*/  ew; int /*<<< orphan*/  devices; TYPE_1__ dev; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  enum scsi_target_state { ____Placeholder_scsi_target_state } scsi_target_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int STARGET_CREATED ; 
 int STARGET_DEL ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_target*) ; 
 int /*<<< orphan*/  scsi_target_reap_usercontext ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC7(struct scsi_target *starget)
{
	struct Scsi_Host *shost = FUNC1(starget->dev.parent);
	unsigned long flags;
	enum scsi_target_state state;
	int empty = 0;

	FUNC5(shost->host_lock, flags);
	state = starget->state;
	if (--starget->reap_ref == 0 && FUNC3(&starget->devices)) {
		empty = 1;
		starget->state = STARGET_DEL;
	}
	FUNC6(shost->host_lock, flags);

	if (!empty)
		return;

	FUNC0(state == STARGET_DEL);
	if (state == STARGET_CREATED)
		FUNC4(starget);
	else
		FUNC2(scsi_target_reap_usercontext,
					   &starget->ew);
}