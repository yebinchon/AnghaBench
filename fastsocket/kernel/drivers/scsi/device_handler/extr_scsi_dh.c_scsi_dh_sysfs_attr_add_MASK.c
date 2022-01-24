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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_dh_state_attr ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct scsi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct scsi_device *sdev;
	int err;

	if (!FUNC1(dev))
		return 0;

	sdev = FUNC2(dev);

	err = FUNC0(&sdev->sdev_gendev,
				 &scsi_dh_state_attr);

	return 0;
}