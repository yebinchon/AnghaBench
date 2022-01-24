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
struct scsi_target {scalar_t__ target_busy; scalar_t__ target_blocked; struct scsi_device* starget_sdev_user; scalar_t__ single_lun; } ;
struct scsi_device {int /*<<< orphan*/  starved_entry; } ;
struct Scsi_Host {int /*<<< orphan*/  starved_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct scsi_target* FUNC4 (struct scsi_device*) ; 
 scalar_t__ FUNC5 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_target*,char*) ; 

__attribute__((used)) static inline int FUNC7(struct Scsi_Host *shost,
					   struct scsi_device *sdev)
{
	struct scsi_target *starget = FUNC4(sdev);

	if (starget->single_lun) {
		if (starget->starget_sdev_user &&
		    starget->starget_sdev_user != sdev)
			return 0;
		starget->starget_sdev_user = sdev;
	}

	if (starget->target_busy == 0 && starget->target_blocked) {
		/*
		 * unblock after target_blocked iterates to zero
		 */
		if (--starget->target_blocked == 0) {
			FUNC0(3, FUNC6(KERN_INFO, starget,
					 "unblocking target at zero depth\n"));
		} else
			return 0;
	}

	if (FUNC5(starget)) {
		if (FUNC3(&sdev->starved_entry))
			FUNC1(&sdev->starved_entry,
				      &shost->starved_list);
		return 0;
	}

	/* We're OK to process the command, so we can't be starved */
	if (!FUNC3(&sdev->starved_entry))
		FUNC2(&sdev->starved_entry);
	return 1;
}