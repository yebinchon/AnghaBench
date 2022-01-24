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
struct scsi_target {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct scsi_device {scalar_t__ borken; TYPE_1__ sdev_gendev; } ;
struct Scsi_Host {int /*<<< orphan*/  scan_mutex; int /*<<< orphan*/  this_id; int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct scsi_device* FUNC4 (struct scsi_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct scsi_target* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_target*) ; 

struct scsi_device *FUNC8(struct Scsi_Host *shost)
{
	struct scsi_device *sdev = NULL;
	struct scsi_target *starget;

	FUNC1(&shost->scan_mutex);
	if (!FUNC6(shost))
		goto out;
	starget = FUNC5(&shost->shost_gendev, 0, shost->this_id);
	if (!starget)
		goto out;

	sdev = FUNC4(starget, 0, NULL);
	if (sdev) {
		sdev->sdev_gendev.parent = FUNC0(&starget->dev);
		sdev->borken = 0;
	} else
		FUNC7(starget);
	FUNC3(&starget->dev);
 out:
	FUNC2(&shost->scan_mutex);
	return sdev;
}