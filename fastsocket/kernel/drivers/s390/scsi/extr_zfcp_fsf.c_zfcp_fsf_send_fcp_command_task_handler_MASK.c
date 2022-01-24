#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct zfcp_fsf_req {int status; TYPE_5__* adapter; TYPE_4__* qtcb; struct scsi_cmnd* data; } ;
struct scsi_cmnd {scalar_t__ result; scalar_t__ retries; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * host_scribble; } ;
struct fcp_resp_with_ext {int dummy; } ;
struct TYPE_10__ {int adapter_features; int /*<<< orphan*/  abort_lock; int /*<<< orphan*/  dbf; } ;
struct TYPE_7__ {int /*<<< orphan*/  fcp_rsp; } ;
struct TYPE_8__ {TYPE_2__ io; } ;
struct TYPE_6__ {int fsf_status; } ;
struct TYPE_9__ {TYPE_3__ bottom; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  DID_TRANSPORT_DISRUPTED ; 
#define  FSF_APP_TAG_CHECK_FAILURE 132 
#define  FSF_BLOCK_GUARD_CHECK_FAILURE 131 
 int FSF_FEATURE_MEASUREMENT_DATA ; 
#define  FSF_INCONSISTENT_PROT_DATA 130 
#define  FSF_INVALID_PROT_PARM 129 
#define  FSF_REF_TAG_CHECK_FAILURE 128 
 int ZFCP_STATUS_FSFREQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,struct scsi_cmnd*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct fcp_resp_with_ext*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*,int) ; 

__attribute__((used)) static void FUNC10(struct zfcp_fsf_req *req)
{
	struct scsi_cmnd *scpnt;
	struct fcp_resp_with_ext *fcp_rsp;
	unsigned long flags;

	FUNC0(&req->adapter->abort_lock, flags);

	scpnt = req->data;
	if (FUNC4(!scpnt)) {
		FUNC1(&req->adapter->abort_lock, flags);
		return;
	}

	if (FUNC4(req->status & ZFCP_STATUS_FSFREQ_ERROR)) {
		FUNC2(scpnt, DID_TRANSPORT_DISRUPTED);
		goto skip_fsfstatus;
	}

	switch (req->qtcb->header.fsf_status) {
	case FSF_INCONSISTENT_PROT_DATA:
	case FSF_INVALID_PROT_PARM:
		FUNC2(scpnt, DID_ERROR);
		goto skip_fsfstatus;
	case FSF_BLOCK_GUARD_CHECK_FAILURE:
		FUNC9(scpnt, 0x1);
		goto skip_fsfstatus;
	case FSF_APP_TAG_CHECK_FAILURE:
		FUNC9(scpnt, 0x2);
		goto skip_fsfstatus;
	case FSF_REF_TAG_CHECK_FAILURE:
		FUNC9(scpnt, 0x3);
		goto skip_fsfstatus;
	}
	fcp_rsp = (struct fcp_resp_with_ext *) &req->qtcb->bottom.io.fcp_rsp;
	FUNC6(fcp_rsp, scpnt);

	if (req->adapter->adapter_features & FSF_FEATURE_MEASUREMENT_DATA)
		FUNC7(req);

	FUNC8(req);

skip_fsfstatus:
	if (scpnt->result != 0)
		FUNC5("erro", 3, req->adapter->dbf, scpnt, req);
	else if (scpnt->retries > 0)
		FUNC5("retr", 4, req->adapter->dbf, scpnt, req);
	else
		FUNC5("norm", 6, req->adapter->dbf, scpnt, req);

	scpnt->host_scribble = NULL;
	(scpnt->scsi_done) (scpnt);
	/*
	 * We must hold this lock until scsi_done has been called.
	 * Otherwise we may call scsi_done after abort regarding this
	 * command has completed.
	 * Note: scsi_done must not block!
	 */
	FUNC1(&req->adapter->abort_lock, flags);
}