#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zfcp_unit {TYPE_2__* port; int /*<<< orphan*/  status; } ;
struct zfcp_adapter {int /*<<< orphan*/  dbf; } ;
struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_3__* device; int /*<<< orphan*/ * host_scribble; } ;
struct fc_rport {int dummy; } ;
struct TYPE_6__ {struct zfcp_unit* hostdata; TYPE_1__* host; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; struct zfcp_adapter* adapter; } ;
struct TYPE_4__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  DID_IMM_RETRY ; 
 int /*<<< orphan*/  DID_NO_CONNECT ; 
 int EBUSY ; 
 int SCSI_MLQUEUE_DEVICE_BUSY ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct fc_rport* FUNC4 (int /*<<< orphan*/ ) ; 
 void FUNC5 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct zfcp_unit*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *scpnt,
				  void (*done) (struct scsi_cmnd *))
{
	struct zfcp_unit *unit;
	struct zfcp_adapter *adapter;
	int    status, scsi_result, ret;
	struct fc_rport *rport = FUNC4(FUNC3(scpnt->device));

	/* reset the status for this request */
	scpnt->result = 0;
	scpnt->host_scribble = NULL;
	scpnt->scsi_done = done;

	/*
	 * figure out adapter and target device
	 * (stored there by zfcp_scsi_slave_alloc)
	 */
	adapter = (struct zfcp_adapter *) scpnt->device->host->hostdata[0];
	unit = scpnt->device->hostdata;

	FUNC0(!adapter || (adapter != unit->port->adapter));
	FUNC0(!scpnt->scsi_done);

	if (FUNC6(!unit)) {
		FUNC9(scpnt, DID_NO_CONNECT);
		return 0;
	}

	scsi_result = FUNC2(rport);
	if (FUNC6(scsi_result)) {
		scpnt->result = scsi_result;
		FUNC7("fail", 4, adapter->dbf, scpnt, NULL);
		scpnt->scsi_done(scpnt);
		return 0;
	}

	status = FUNC1(&unit->status);
	if (FUNC6(status & ZFCP_STATUS_COMMON_ERP_FAILED) &&
		     !(FUNC1(&unit->port->status) &
		       ZFCP_STATUS_COMMON_ERP_FAILED)) {
		/* only unit access denied, but port is good
		 * not covered by FC transport, have to fail here */
		FUNC9(scpnt, DID_ERROR);
		return 0;
	}

	if (FUNC6(!(status & ZFCP_STATUS_COMMON_UNBLOCKED))) {
		/* This could be either
		 * open unit pending: this is temporary, will result in
		 * 	open unit or ERP_FAILED, so retry command
		 * call to rport_delete pending: mimic retry from
		 * 	fc_remote_port_chkready until rport is BLOCKED
		 */
		FUNC9(scpnt, DID_IMM_RETRY);
		return 0;
	}

	ret = FUNC8(unit, scpnt);
	if (FUNC6(ret == -EBUSY))
		return SCSI_MLQUEUE_DEVICE_BUSY;
	else if (FUNC6(ret < 0))
		return SCSI_MLQUEUE_HOST_BUSY;

	return ret;
}