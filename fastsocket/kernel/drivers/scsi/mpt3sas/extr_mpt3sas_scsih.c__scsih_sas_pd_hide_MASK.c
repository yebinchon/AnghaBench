#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u16 ;
struct scsi_target {struct MPT3SAS_TARGET* hostdata; } ;
struct _sas_device {int /*<<< orphan*/  volume_wwid; scalar_t__ volume_handle; struct scsi_target* starget; } ;
struct MPT3SAS_TARGET {int /*<<< orphan*/  flags; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; int /*<<< orphan*/  pd_handles; } ;
struct TYPE_3__ {int /*<<< orphan*/  PhysDiskNum; int /*<<< orphan*/  PhysDiskDevHandle; } ;
typedef  TYPE_1__ Mpi2EventIrConfigElement_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPT_TARGET_FLAGS_RAID_COMPONENT ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _scsih_reprobe_lun ; 
 struct _sas_device* FUNC1 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_target*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct MPT3SAS_ADAPTER *ioc,
	Mpi2EventIrConfigElement_t *element)
{
	struct _sas_device *sas_device;
	struct scsi_target *starget = NULL;
	struct MPT3SAS_TARGET *sas_target_priv_data;
	unsigned long flags;
	u16 handle = FUNC2(element->PhysDiskDevHandle);
	u16 volume_handle = 0;
	u64 volume_wwid = 0;

	FUNC3(ioc, handle, &volume_handle);
	if (volume_handle)
		FUNC4(ioc, volume_handle,
		    &volume_wwid);

	FUNC6(&ioc->sas_device_lock, flags);
	sas_device = FUNC1(ioc, handle);
	if (sas_device) {
		FUNC5(handle, ioc->pd_handles);
		if (sas_device->starget && sas_device->starget->hostdata) {
			starget = sas_device->starget;
			sas_target_priv_data = starget->hostdata;
			sas_target_priv_data->flags |=
			    MPT_TARGET_FLAGS_RAID_COMPONENT;
			sas_device->volume_handle = volume_handle;
			sas_device->volume_wwid = volume_wwid;
		}
	}
	FUNC7(&ioc->sas_device_lock, flags);
	if (!sas_device)
		return;

	/* hiding raid component */
	FUNC0(ioc, handle, element->PhysDiskNum);
	if (starget)
		FUNC8(starget, (void *)1, _scsih_reprobe_lun);
}