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
typedef  scalar_t__ u16 ;
struct scsi_target {int dummy; } ;
struct scsi_cmnd {int result; TYPE_2__* device; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct _sas_device {scalar_t__ volume_handle; } ;
struct MPT2SAS_DEVICE {TYPE_1__* sas_target; } ;
struct MPT2SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; struct MPT2SAS_DEVICE* hostdata; struct scsi_target* sdev_target; int /*<<< orphan*/  host; } ;
struct TYPE_3__ {int flags; scalar_t__ handle; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int DID_RESET ; 
 int FAILED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  MPI2_SCSITASKMGMT_TASKTYPE_LOGICAL_UNIT_RESET ; 
 int MPT_TARGET_FLAGS_RAID_COMPONENT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TM_MUTEX_ON ; 
 struct _sas_device* FUNC0 (struct MPT2SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT2SAS_ADAPTER*,struct scsi_cmnd*) ; 
 int FUNC2 (struct MPT2SAS_ADAPTER*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,char*,char*,struct scsi_cmnd*) ; 
 struct MPT2SAS_ADAPTER* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct scsi_target*,char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static int
FUNC9(struct scsi_cmnd *scmd)
{
	struct MPT2SAS_ADAPTER *ioc = FUNC4(scmd->device->host);
	struct MPT2SAS_DEVICE *sas_device_priv_data;
	struct _sas_device *sas_device;
	unsigned long flags;
	u16	handle;
	int r;

	struct scsi_target *starget = scmd->device->sdev_target;

	FUNC7(KERN_INFO, starget, "attempting device reset! "
	    "scmd(%p)\n", scmd);
	FUNC1(ioc, scmd);

	sas_device_priv_data = scmd->device->hostdata;
	if (!sas_device_priv_data || !sas_device_priv_data->sas_target) {
		FUNC7(KERN_INFO, starget, "device been deleted! "
		    "scmd(%p)\n", scmd);
		scmd->result = DID_NO_CONNECT << 16;
		scmd->scsi_done(scmd);
		r = SUCCESS;
		goto out;
	}

	/* for hidden raid components obtain the volume_handle */
	handle = 0;
	if (sas_device_priv_data->sas_target->flags &
	    MPT_TARGET_FLAGS_RAID_COMPONENT) {
		FUNC5(&ioc->sas_device_lock, flags);
		sas_device = FUNC0(ioc,
		   sas_device_priv_data->sas_target->handle);
		if (sas_device)
			handle = sas_device->volume_handle;
		FUNC6(&ioc->sas_device_lock, flags);
	} else
		handle = sas_device_priv_data->sas_target->handle;

	if (!handle) {
		scmd->result = DID_RESET << 16;
		r = FAILED;
		goto out;
	}

	r = FUNC2(ioc, handle, scmd->device->channel,
	    scmd->device->id, scmd->device->lun,
	    MPI2_SCSITASKMGMT_TASKTYPE_LOGICAL_UNIT_RESET, 0, 30, 0,
	    TM_MUTEX_ON);

 out:
	FUNC3(KERN_INFO, scmd->device, "device reset: %s scmd(%p)\n",
	    ((r == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);
	return r;
}