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
struct zfcp_unit {int dummy; } ;
struct zfcp_fsf_req {int status; int /*<<< orphan*/  completion; int /*<<< orphan*/ * data; } ;
struct zfcp_adapter {int /*<<< orphan*/  dbf; int /*<<< orphan*/  status; int /*<<< orphan*/  abort_lock; int /*<<< orphan*/  req_list_lock; } ;
struct scsi_cmnd {scalar_t__ host_scribble; TYPE_1__* device; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
struct TYPE_2__ {struct zfcp_unit* hostdata; struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED ; 
 int ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,struct scsi_cmnd*,struct zfcp_fsf_req*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_adapter*) ; 
 struct zfcp_fsf_req* FUNC9 (unsigned long,struct zfcp_unit*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_fsf_req*) ; 
 struct zfcp_fsf_req* FUNC11 (struct zfcp_adapter*,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *scpnt)
{
	struct Scsi_Host *scsi_host = scpnt->device->host;
	struct zfcp_adapter *adapter =
		(struct zfcp_adapter *) scsi_host->hostdata[0];
	struct zfcp_unit *unit = scpnt->device->hostdata;
	struct zfcp_fsf_req *old_req, *abrt_req;
	unsigned long flags;
	unsigned long old_reqid = (unsigned long) scpnt->host_scribble;
	int retval = SUCCESS, ret;
	int retry = 3;
	char *dbf_tag;

	/* avoid race condition between late normal completion and abort */
	FUNC5(&adapter->abort_lock, flags);

	FUNC2(&adapter->req_list_lock);
	old_req = FUNC11(adapter, old_reqid);
	FUNC3(&adapter->req_list_lock);
	if (!old_req) {
		FUNC6(&adapter->abort_lock, flags);
		FUNC7("lte1", adapter->dbf, scpnt, NULL,
				    old_reqid);
		return FAILED; /* completion could be in progress */
	}
	old_req->data = NULL;

	/* don't access old fsf_req after releasing the abort_lock */
	FUNC6(&adapter->abort_lock, flags);

	while (retry--) {
		abrt_req = FUNC9(old_reqid, unit);
		if (abrt_req)
			break;

		FUNC8(adapter);
		ret = FUNC1(scpnt);
		if (ret)
			return ret;
		if (!(FUNC0(&adapter->status) &
		      ZFCP_STATUS_COMMON_RUNNING)) {
			FUNC7("nres", adapter->dbf, scpnt, NULL,
					    old_reqid);
			return SUCCESS;
		}
	}
	if (!abrt_req)
		return FAILED;

	FUNC4(&abrt_req->completion);

	if (abrt_req->status & ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED)
		dbf_tag = "okay";
	else if (abrt_req->status & ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED)
		dbf_tag = "lte2";
	else {
		dbf_tag = "fail";
		retval = FAILED;
	}
	FUNC7(dbf_tag, adapter->dbf, scpnt, abrt_req, old_reqid);
	FUNC10(abrt_req);
	return retval;
}