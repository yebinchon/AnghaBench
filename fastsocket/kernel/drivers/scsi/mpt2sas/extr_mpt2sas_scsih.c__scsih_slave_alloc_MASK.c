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
struct scsi_target {scalar_t__ channel; int /*<<< orphan*/  id; int /*<<< orphan*/  dev; struct MPT2SAS_TARGET* hostdata; } ;
struct scsi_device {int no_uld_attach; struct MPT2SAS_DEVICE* hostdata; int /*<<< orphan*/  lun; } ;
struct _raid_device {struct scsi_device* sdev; } ;
struct Scsi_Host {int dummy; } ;
struct MPT2SAS_TARGET {int flags; int /*<<< orphan*/  num_luns; } ;
struct MPT2SAS_DEVICE {struct MPT2SAS_TARGET* sas_target; int /*<<< orphan*/  flags; int /*<<< orphan*/  lun; } ;
struct MPT2SAS_ADAPTER {int /*<<< orphan*/  raid_device_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MPT_DEVICE_FLAGS_INIT ; 
 int MPT_TARGET_FLAGS_RAID_COMPONENT ; 
 scalar_t__ RAID_CHANNEL ; 
 struct _raid_device* FUNC0 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ *) ; 
 struct MPT2SAS_DEVICE* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct scsi_target* FUNC3 (struct scsi_device*) ; 
 struct MPT2SAS_ADAPTER* FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct scsi_device *sdev)
{
	struct Scsi_Host *shost;
	struct MPT2SAS_ADAPTER *ioc;
	struct MPT2SAS_TARGET *sas_target_priv_data;
	struct MPT2SAS_DEVICE *sas_device_priv_data;
	struct scsi_target *starget;
	struct _raid_device *raid_device;
	unsigned long flags;

	sas_device_priv_data = FUNC2(sizeof(struct scsi_device), GFP_KERNEL);
	if (!sas_device_priv_data)
		return -ENOMEM;

	sas_device_priv_data->lun = sdev->lun;
	sas_device_priv_data->flags = MPT_DEVICE_FLAGS_INIT;

	starget = FUNC3(sdev);
	sas_target_priv_data = starget->hostdata;
	sas_target_priv_data->num_luns++;
	sas_device_priv_data->sas_target = sas_target_priv_data;
	sdev->hostdata = sas_device_priv_data;
	if ((sas_target_priv_data->flags & MPT_TARGET_FLAGS_RAID_COMPONENT))
		sdev->no_uld_attach = 1;

	shost = FUNC1(&starget->dev);
	ioc = FUNC4(shost);
	if (starget->channel == RAID_CHANNEL) {
		FUNC5(&ioc->raid_device_lock, flags);
		raid_device = FUNC0(ioc,
		    starget->id, starget->channel);
		if (raid_device)
			raid_device->sdev = sdev; /* raid is single lun */
		FUNC6(&ioc->raid_device_lock, flags);
	}

	return 0;
}