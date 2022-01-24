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
struct scsi_device {int /*<<< orphan*/  queue_depth; int /*<<< orphan*/  tagged_supported; } ;
struct domain_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int) ; 
 struct domain_device* FUNC4 (struct scsi_device*) ; 

int FUNC5(struct scsi_device *scsi_dev, int qt)
{
	struct domain_device *dev = FUNC4(scsi_dev);

	if (FUNC0(dev))
		return -EINVAL;

	if (!scsi_dev->tagged_supported)
		return 0;

	FUNC2(scsi_dev, 1);

	FUNC3(scsi_dev, qt);
	FUNC1(scsi_dev, scsi_dev->queue_depth);

	return qt;
}