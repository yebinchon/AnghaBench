#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct scsi_cmnd {int result; } ;
struct sbp2_lu {int /*<<< orphan*/  ne; } ;

/* Variables and functions */
 int CHECK_CONDITION ; 
 int DID_BUS_BUSY ; 
 int DID_ERROR ; 
 int DID_NO_CONNECT ; 
 int DID_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  SBP2_SCSI_STATUS_BUSY 134 
#define  SBP2_SCSI_STATUS_CHECK_CONDITION 133 
#define  SBP2_SCSI_STATUS_COMMAND_TERMINATED 132 
#define  SBP2_SCSI_STATUS_CONDITION_MET 131 
#define  SBP2_SCSI_STATUS_GOOD 130 
#define  SBP2_SCSI_STATUS_RESERVATION_CONFLICT 129 
#define  SBP2_SCSI_STATUS_SELECTION_TIMEOUT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC3(struct sbp2_lu *lu, u32 scsi_status,
				      struct scsi_cmnd *SCpnt,
				      void (*done)(struct scsi_cmnd *))
{
	if (!SCpnt) {
		FUNC0("SCpnt is NULL");
		return;
	}

	switch (scsi_status) {
	case SBP2_SCSI_STATUS_GOOD:
		SCpnt->result = DID_OK << 16;
		break;

	case SBP2_SCSI_STATUS_BUSY:
		FUNC0("SBP2_SCSI_STATUS_BUSY");
		SCpnt->result = DID_BUS_BUSY << 16;
		break;

	case SBP2_SCSI_STATUS_CHECK_CONDITION:
		SCpnt->result = CHECK_CONDITION << 1 | DID_OK << 16;
		break;

	case SBP2_SCSI_STATUS_SELECTION_TIMEOUT:
		FUNC0("SBP2_SCSI_STATUS_SELECTION_TIMEOUT");
		SCpnt->result = DID_NO_CONNECT << 16;
		FUNC2(SCpnt);
		break;

	case SBP2_SCSI_STATUS_CONDITION_MET:
	case SBP2_SCSI_STATUS_RESERVATION_CONFLICT:
	case SBP2_SCSI_STATUS_COMMAND_TERMINATED:
		FUNC0("Bad SCSI status = %x", scsi_status);
		SCpnt->result = DID_ERROR << 16;
		FUNC2(SCpnt);
		break;

	default:
		FUNC0("Unsupported SCSI status = %x", scsi_status);
		SCpnt->result = DID_ERROR << 16;
	}

	/* If a bus reset is in progress and there was an error, complete
	 * the command as busy so that it will get retried. */
	if (!FUNC1(lu->ne)
	    && (scsi_status != SBP2_SCSI_STATUS_GOOD)) {
		FUNC0("Completing command with busy (bus reset)");
		SCpnt->result = DID_BUS_BUSY << 16;
	}

	/* Tell the SCSI stack that we're done with this command. */
	done(SCpnt);
}