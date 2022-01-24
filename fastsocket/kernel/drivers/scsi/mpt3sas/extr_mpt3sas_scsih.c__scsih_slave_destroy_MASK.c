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
struct scsi_target {int /*<<< orphan*/  dev; struct MPT3SAS_TARGET* hostdata; } ;
struct scsi_device {int /*<<< orphan*/ * hostdata; } ;
struct _sas_device {int /*<<< orphan*/ * starget; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_TARGET {int flags; int /*<<< orphan*/  num_luns; int /*<<< orphan*/  sas_address; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; } ;

/* Variables and functions */
 int MPT_TARGET_FLAGS_VOLUME ; 
 struct Scsi_Host* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct _sas_device* FUNC2 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 struct scsi_target* FUNC3 (struct scsi_device*) ; 
 struct MPT3SAS_ADAPTER* FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct scsi_device *sdev)
{
	struct MPT3SAS_TARGET *sas_target_priv_data;
	struct scsi_target *starget;
	struct Scsi_Host *shost;
	struct MPT3SAS_ADAPTER *ioc;
	struct _sas_device *sas_device;
	unsigned long flags;

	if (!sdev->hostdata)
		return;

	starget = FUNC3(sdev);
	sas_target_priv_data = starget->hostdata;
	sas_target_priv_data->num_luns--;

	shost = FUNC0(&starget->dev);
	ioc = FUNC4(shost);

	if (!(sas_target_priv_data->flags & MPT_TARGET_FLAGS_VOLUME)) {
		FUNC5(&ioc->sas_device_lock, flags);
		sas_device = FUNC2(ioc,
		   sas_target_priv_data->sas_address);
		if (sas_device && !sas_target_priv_data->num_luns)
			sas_device->starget = NULL;
		FUNC6(&ioc->sas_device_lock, flags);
	}

	FUNC1(sdev->hostdata);
	sdev->hostdata = NULL;
}