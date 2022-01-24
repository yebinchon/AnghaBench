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
struct scsi_device {int /*<<< orphan*/  tagged_supported; } ;
struct TYPE_2__ {int /*<<< orphan*/  ap; } ;
struct domain_device {TYPE_1__ sata_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SCSI_QDEPTH_DEFAULT 130 
#define  SCSI_QDEPTH_QFULL 129 
#define  SCSI_QDEPTH_RAMP_UP 128 
 int FUNC0 (int /*<<< orphan*/ ,struct scsi_device*,int,int) ; 
 scalar_t__ FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int) ; 
 struct domain_device* FUNC5 (struct scsi_device*) ; 

int FUNC6(struct scsi_device *sdev, int depth, int reason)
{
	struct domain_device *dev = FUNC5(sdev);

	if (FUNC1(dev))
		return FUNC0(dev->sata_dev.ap, sdev, depth,
						reason);

	switch (reason) {
	case SCSI_QDEPTH_DEFAULT:
	case SCSI_QDEPTH_RAMP_UP:
		if (!sdev->tagged_supported)
			depth = 1;
		FUNC2(sdev, FUNC3(sdev), depth);
		break;
	case SCSI_QDEPTH_QFULL:
		FUNC4(sdev, depth);
		break;
	default:
		return -EOPNOTSUPP;
	}

	return depth;
}