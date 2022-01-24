#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_target {int /*<<< orphan*/  devices; int /*<<< orphan*/  scsi_level; } ;
struct TYPE_5__ {int /*<<< orphan*/ * class; int /*<<< orphan*/  parent; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct scsi_device {int /*<<< orphan*/  siblings; int /*<<< orphan*/  same_target_siblings; TYPE_1__ sdev_gendev; int /*<<< orphan*/  scsi_level; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; struct Scsi_Host* host; TYPE_1__ sdev_dev; struct scsi_target* sdev_target; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  __devices; int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_bus_type ; 
 int /*<<< orphan*/  scsi_dev_type ; 
 int /*<<< orphan*/  sdev_class ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(struct scsi_device *sdev)
{
	unsigned long flags;
	struct Scsi_Host *shost = sdev->host;
	struct scsi_target  *starget = sdev->sdev_target;

	FUNC1(&sdev->sdev_gendev);
	sdev->sdev_gendev.bus = &scsi_bus_type;
	sdev->sdev_gendev.type = &scsi_dev_type;
	FUNC0(&sdev->sdev_gendev, "%d:%d:%d:%d",
		     sdev->host->host_no, sdev->channel, sdev->id, sdev->lun);

	FUNC1(&sdev->sdev_dev);
	sdev->sdev_dev.parent = FUNC2(&sdev->sdev_gendev);
	sdev->sdev_dev.class = &sdev_class;
	FUNC0(&sdev->sdev_dev, "%d:%d:%d:%d",
		     sdev->host->host_no, sdev->channel, sdev->id, sdev->lun);
	sdev->scsi_level = starget->scsi_level;
	FUNC6(&sdev->sdev_gendev);
	FUNC4(shost->host_lock, flags);
	FUNC3(&sdev->same_target_siblings, &starget->devices);
	FUNC3(&sdev->siblings, &shost->__devices);
	FUNC5(shost->host_lock, flags);
}