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
struct scsi_device {int queue_depth; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SCSI_QDEPTH_DEFAULT 130 
#define  SCSI_QDEPTH_QFULL 129 
#define  SCSI_QDEPTH_RAMP_UP 128 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int) ; 

int FUNC3(struct scsi_device *sdev, int qdepth, int reason)
{
	switch (reason) {
	case SCSI_QDEPTH_DEFAULT:
		FUNC0(sdev, FUNC1(sdev), qdepth);
		break;
	case SCSI_QDEPTH_QFULL:
		FUNC2(sdev, qdepth);
		break;
	case SCSI_QDEPTH_RAMP_UP:
		FUNC0(sdev, FUNC1(sdev), qdepth);
		break;
	default:
		return -EOPNOTSUPP;
	}
	return sdev->queue_depth;
}