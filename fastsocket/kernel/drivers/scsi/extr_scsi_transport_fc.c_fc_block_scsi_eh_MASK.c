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
struct scsi_cmnd {TYPE_1__* device; } ;
struct fc_rport {scalar_t__ port_state; int flags; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAST_IO_FAIL ; 
 scalar_t__ FC_PORTSTATE_BLOCKED ; 
 int FC_RPORT_FAST_FAIL_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct fc_rport* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct scsi_cmnd *cmnd)
{
	struct Scsi_Host *shost = cmnd->device->host;
	struct fc_rport *rport = FUNC4(FUNC1(cmnd->device));
	unsigned long flags;

	FUNC2(shost->host_lock, flags);
	while (rport->port_state == FC_PORTSTATE_BLOCKED &&
	       !(rport->flags & FC_RPORT_FAST_FAIL_TIMEDOUT)) {
		FUNC3(shost->host_lock, flags);
		FUNC0(1000);
		FUNC2(shost->host_lock, flags);
	}
	FUNC3(shost->host_lock, flags);

	if (rport->flags & FC_RPORT_FAST_FAIL_TIMEDOUT)
		return FAST_IO_FAIL;

	return 0;
}