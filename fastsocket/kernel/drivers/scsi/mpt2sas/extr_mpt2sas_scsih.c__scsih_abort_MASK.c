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
typedef  int /*<<< orphan*/  u16 ;
struct scsi_cmnd {int result; TYPE_2__* device; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct MPT2SAS_DEVICE {TYPE_1__* sas_target; } ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; struct MPT2SAS_DEVICE* hostdata; int /*<<< orphan*/  host; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int DID_RESET ; 
 int FAILED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK ; 
 int MPT_TARGET_FLAGS_RAID_COMPONENT ; 
 int MPT_TARGET_FLAGS_VOLUME ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TM_MUTEX_ON ; 
 int /*<<< orphan*/  FUNC0 (struct MPT2SAS_ADAPTER*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT2SAS_ADAPTER*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT2SAS_ADAPTER*) ; 
 int FUNC3 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,char*,...) ; 
 struct MPT2SAS_ADAPTER* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 

__attribute__((used)) static int
FUNC7(struct scsi_cmnd *scmd)
{
	struct MPT2SAS_ADAPTER *ioc = FUNC5(scmd->device->host);
	struct MPT2SAS_DEVICE *sas_device_priv_data;
	u16 smid;
	u16 handle;
	int r;

	FUNC4(KERN_INFO, scmd->device, "attempting task abort! "
	    "scmd(%p)\n", scmd);
	FUNC1(ioc, scmd);

	sas_device_priv_data = scmd->device->hostdata;
	if (!sas_device_priv_data || !sas_device_priv_data->sas_target) {
		FUNC4(KERN_INFO, scmd->device, "device been deleted! "
		    "scmd(%p)\n", scmd);
		scmd->result = DID_NO_CONNECT << 16;
		scmd->scsi_done(scmd);
		r = SUCCESS;
		goto out;
	}

	/* search for the command */
	smid = FUNC0(ioc, scmd);
	if (!smid) {
		scmd->result = DID_RESET << 16;
		r = SUCCESS;
		goto out;
	}

	/* for hidden raid components and volumes this is not supported */
	if (sas_device_priv_data->sas_target->flags &
	    MPT_TARGET_FLAGS_RAID_COMPONENT ||
	    sas_device_priv_data->sas_target->flags & MPT_TARGET_FLAGS_VOLUME) {
		scmd->result = DID_RESET << 16;
		r = FAILED;
		goto out;
	}

	FUNC2(ioc);

	handle = sas_device_priv_data->sas_target->handle;
	r = FUNC3(ioc, handle, scmd->device->channel,
	    scmd->device->id, scmd->device->lun,
	    MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK, smid, 30,
	    scmd->serial_number, TM_MUTEX_ON);

 out:
	FUNC4(KERN_INFO, scmd->device, "task abort: %s scmd(%p)\n",
	    ((r == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);
	return r;
}