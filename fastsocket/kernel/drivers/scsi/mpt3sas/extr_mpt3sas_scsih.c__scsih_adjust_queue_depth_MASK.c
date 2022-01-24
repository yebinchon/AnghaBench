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
struct scsi_device {int /*<<< orphan*/  tagged_supported; struct MPT3SAS_DEVICE* hostdata; struct Scsi_Host* host; } ;
struct _sas_device {int device_info; } ;
struct Scsi_Host {int can_queue; } ;
struct MPT3SAS_TARGET {int flags; int /*<<< orphan*/  sas_address; } ;
struct MPT3SAS_DEVICE {struct MPT3SAS_TARGET* sas_target; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; } ;

/* Variables and functions */
 int MPI2_SAS_DEVICE_INFO_SATA_DEVICE ; 
 int MPT3SAS_SATA_QUEUE_DEPTH ; 
 int MPT_TARGET_FLAGS_VOLUME ; 
 struct _sas_device* FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 struct MPT3SAS_ADAPTER* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct scsi_device *sdev, int qdepth)
{
	struct Scsi_Host *shost = sdev->host;
	int max_depth;
	struct MPT3SAS_ADAPTER *ioc = FUNC3(shost);
	struct MPT3SAS_DEVICE *sas_device_priv_data;
	struct MPT3SAS_TARGET *sas_target_priv_data;
	struct _sas_device *sas_device;
	unsigned long flags;

	max_depth = shost->can_queue;

	/* limit max device queue for SATA to 32 */
	sas_device_priv_data = sdev->hostdata;
	if (!sas_device_priv_data)
		goto not_sata;
	sas_target_priv_data = sas_device_priv_data->sas_target;
	if (!sas_target_priv_data)
		goto not_sata;
	if ((sas_target_priv_data->flags & MPT_TARGET_FLAGS_VOLUME))
		goto not_sata;
	FUNC4(&ioc->sas_device_lock, flags);
	sas_device = FUNC0(ioc,
	   sas_device_priv_data->sas_target->sas_address);
	if (sas_device && sas_device->device_info &
	    MPI2_SAS_DEVICE_INFO_SATA_DEVICE)
		max_depth = MPT3SAS_SATA_QUEUE_DEPTH;
	FUNC5(&ioc->sas_device_lock, flags);

 not_sata:

	if (!sdev->tagged_supported)
		max_depth = 1;
	if (qdepth > max_depth)
		qdepth = max_depth;
	FUNC1(sdev, FUNC2(sdev), qdepth);
}