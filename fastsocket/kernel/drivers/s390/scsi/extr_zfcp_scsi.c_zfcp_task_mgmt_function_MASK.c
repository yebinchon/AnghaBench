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
typedef  int /*<<< orphan*/  u8 ;
struct zfcp_unit {TYPE_2__* port; } ;
struct zfcp_fsf_req {int status; int /*<<< orphan*/  completion; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {struct zfcp_adapter* adapter; } ;
struct TYPE_3__ {struct zfcp_unit* hostdata; } ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int ZFCP_STATUS_FSFREQ_TMFUNCFAILED ; 
 int ZFCP_STATUS_FSFREQ_TMFUNCNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct zfcp_unit*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_fsf_req*) ; 
 struct zfcp_fsf_req* FUNC6 (struct zfcp_unit*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *scpnt, u8 tm_flags)
{
	struct zfcp_unit *unit = scpnt->device->hostdata;
	struct zfcp_adapter *adapter = unit->port->adapter;
	struct zfcp_fsf_req *fsf_req = NULL;
	int retval = SUCCESS, ret;
	int retry = 3;

	while (retry--) {
		fsf_req = FUNC6(unit, tm_flags);
		if (fsf_req)
			break;

		FUNC4(adapter);
		ret = FUNC1(scpnt);
		if (ret)
			return ret;

		if (!(FUNC0(&adapter->status) &
		      ZFCP_STATUS_COMMON_RUNNING)) {
			FUNC3("nres", tm_flags, unit, scpnt);
			return SUCCESS;
		}
	}
	if (!fsf_req)
		return FAILED;

	FUNC2(&fsf_req->completion);

	if (fsf_req->status & ZFCP_STATUS_FSFREQ_TMFUNCFAILED) {
		FUNC3("fail", tm_flags, unit, scpnt);
		retval = FAILED;
	} else if (fsf_req->status & ZFCP_STATUS_FSFREQ_TMFUNCNOTSUPP) {
		FUNC3("nsup", tm_flags, unit, scpnt);
		retval = FAILED;
	} else
		FUNC3("okay", tm_flags, unit, scpnt);

	FUNC5(fsf_req);
	return retval;
}