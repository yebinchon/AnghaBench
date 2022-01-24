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
struct scsi_cmnd {int result; TYPE_2__* device; } ;
struct mptfc_rport_info {int dummy; } ;
struct fc_rport {scalar_t__ dd_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  vtarget; } ;
typedef  TYPE_1__ VirtDevice ;
struct TYPE_4__ {TYPE_1__* hostdata; } ;

/* Variables and functions */
 int DID_IMM_RETRY ; 
 int DID_NO_CONNECT ; 
 int FUNC0 (struct fc_rport*) ; 
 int FUNC1 (struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct fc_rport* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *))
{
	struct mptfc_rport_info	*ri;
	struct fc_rport	*rport = FUNC3(FUNC2(SCpnt->device));
	int		err;
	VirtDevice	*vdevice = SCpnt->device->hostdata;

	if (!vdevice || !vdevice->vtarget) {
		SCpnt->result = DID_NO_CONNECT << 16;
		done(SCpnt);
		return 0;
	}

	err = FUNC0(rport);
	if (FUNC4(err)) {
		SCpnt->result = err;
		done(SCpnt);
		return 0;
	}

	/* dd_data is null until finished adding target */
	ri = *((struct mptfc_rport_info **)rport->dd_data);
	if (FUNC4(!ri)) {
		SCpnt->result = DID_IMM_RETRY << 16;
		done(SCpnt);
		return 0;
	}

	return FUNC1(SCpnt,done);
}