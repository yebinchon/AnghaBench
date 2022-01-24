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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; TYPE_1__* host; } ;
struct enclosure_device {int /*<<< orphan*/  edev; } ;
struct TYPE_2__ {int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 struct enclosure_device* FUNC0 (int /*<<< orphan*/ *,struct enclosure_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct enclosure_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct scsi_device *sdev)
{
	struct enclosure_device *edev, *prev = NULL;

	while ((edev = FUNC0(&sdev->host->shost_gendev, prev)) != NULL) {
		prev = edev;
		if (!FUNC1(edev, &sdev->sdev_gendev))
			break;
	}
	if (edev)
		FUNC2(&edev->edev);
}