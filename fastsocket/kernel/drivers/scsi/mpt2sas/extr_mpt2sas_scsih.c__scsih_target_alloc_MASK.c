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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {int /*<<< orphan*/  channel; int /*<<< orphan*/  id; TYPE_2__ dev; struct MPT2SAS_TARGET* hostdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct _sas_device {int /*<<< orphan*/  handle; int /*<<< orphan*/  channel; int /*<<< orphan*/  id; struct scsi_target* starget; int /*<<< orphan*/  sas_address; } ;
struct _raid_device {struct scsi_target* starget; int /*<<< orphan*/  wwid; int /*<<< orphan*/  handle; } ;
struct Scsi_Host {int dummy; } ;
struct MPT2SAS_TARGET {int /*<<< orphan*/  flags; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  handle; struct _raid_device* raid_device; struct scsi_target* starget; } ;
struct MPT2SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; int /*<<< orphan*/  pd_handles; int /*<<< orphan*/  raid_device_lock; scalar_t__ is_warpdrive; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MPT2SAS_INVALID_DEVICE_HANDLE ; 
 int /*<<< orphan*/  MPT_TARGET_FLAGS_RAID_COMPONENT ; 
 int /*<<< orphan*/  MPT_TARGET_FLAGS_VOLUME ; 
 int /*<<< orphan*/  RAID_CHANNEL ; 
 struct _raid_device* FUNC0 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sas_rphy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (TYPE_2__*) ; 
 struct MPT2SAS_TARGET* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct _sas_device* FUNC4 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 struct MPT2SAS_ADAPTER* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct scsi_target *starget)
{
	struct Scsi_Host *shost = FUNC2(&starget->dev);
	struct MPT2SAS_ADAPTER *ioc = FUNC5(shost);
	struct MPT2SAS_TARGET *sas_target_priv_data;
	struct _sas_device *sas_device;
	struct _raid_device *raid_device;
	unsigned long flags;
	struct sas_rphy *rphy;

	sas_target_priv_data = FUNC3(sizeof(struct scsi_target), GFP_KERNEL);
	if (!sas_target_priv_data)
		return -ENOMEM;

	starget->hostdata = sas_target_priv_data;
	sas_target_priv_data->starget = starget;
	sas_target_priv_data->handle = MPT2SAS_INVALID_DEVICE_HANDLE;

	/* RAID volumes */
	if (starget->channel == RAID_CHANNEL) {
		FUNC6(&ioc->raid_device_lock, flags);
		raid_device = FUNC0(ioc, starget->id,
		    starget->channel);
		if (raid_device) {
			sas_target_priv_data->handle = raid_device->handle;
			sas_target_priv_data->sas_address = raid_device->wwid;
			sas_target_priv_data->flags |= MPT_TARGET_FLAGS_VOLUME;
			if (ioc->is_warpdrive)
				sas_target_priv_data->raid_device = raid_device;
			raid_device->starget = starget;
		}
		FUNC7(&ioc->raid_device_lock, flags);
		return 0;
	}

	/* sas/sata devices */
	FUNC6(&ioc->sas_device_lock, flags);
	rphy = FUNC1(starget->dev.parent);
	sas_device = FUNC4(ioc,
	   rphy->identify.sas_address);

	if (sas_device) {
		sas_target_priv_data->handle = sas_device->handle;
		sas_target_priv_data->sas_address = sas_device->sas_address;
		sas_device->starget = starget;
		sas_device->id = starget->id;
		sas_device->channel = starget->channel;
		if (FUNC8(sas_device->handle, ioc->pd_handles))
			sas_target_priv_data->flags |=
			    MPT_TARGET_FLAGS_RAID_COMPONENT;
	}
	FUNC7(&ioc->sas_device_lock, flags);

	return 0;
}