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
struct scsi_cmnd {scalar_t__ sc_data_direction; int result; TYPE_2__* device; } ;
struct sbp2_lu {int /*<<< orphan*/  ne; struct sbp2_fwhost_info* hi; } ;
struct sbp2_fwhost_info {int dummy; } ;
struct TYPE_4__ {int lun; TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int DID_BUS_BUSY ; 
 int DID_ERROR ; 
 int DID_NO_CONNECT ; 
 scalar_t__ DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SBP2_SCSI_STATUS_SELECTION_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sbp2_lu*,struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ; 
 int /*<<< orphan*/  FUNC3 (struct sbp2_lu*,int /*<<< orphan*/ ,struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ; 
 int /*<<< orphan*/  FUNC4 (struct sbp2_lu*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *SCpnt,
				 void (*done)(struct scsi_cmnd *))
{
	struct sbp2_lu *lu = (struct sbp2_lu *)SCpnt->device->host->hostdata[0];
	struct sbp2_fwhost_info *hi;
	int result = DID_NO_CONNECT << 16;

	if (FUNC5(!FUNC4(lu)))
		goto done;

	hi = lu->hi;

	if (FUNC5(!hi)) {
		FUNC0("sbp2_fwhost_info is NULL - this is bad!");
		goto done;
	}

	/* Multiple units are currently represented to the SCSI core as separate
	 * targets, not as one target with multiple LUs. Therefore return
	 * selection time-out to any IO directed at non-zero LUNs. */
	if (FUNC5(SCpnt->device->lun))
		goto done;

	if (FUNC5(!FUNC1(lu->ne))) {
		FUNC0("Bus reset in progress - rejecting command");
		result = DID_BUS_BUSY << 16;
		goto done;
	}

	/* Bidirectional commands are not yet implemented,
	 * and unknown transfer direction not handled. */
	if (FUNC5(SCpnt->sc_data_direction == DMA_BIDIRECTIONAL)) {
		FUNC0("Cannot handle DMA_BIDIRECTIONAL - rejecting command");
		result = DID_ERROR << 16;
		goto done;
	}

	if (FUNC2(lu, SCpnt, done)) {
		FUNC0("Error sending SCSI command");
		FUNC3(lu,
					  SBP2_SCSI_STATUS_SELECTION_TIMEOUT,
					  SCpnt, done);
	}
	return 0;

done:
	SCpnt->result = result;
	done(SCpnt);
	return 0;
}