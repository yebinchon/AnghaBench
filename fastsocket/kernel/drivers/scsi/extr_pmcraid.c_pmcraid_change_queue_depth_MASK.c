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
 int PMCRAID_MAX_CMD_PER_LUN ; 
 int SCSI_QDEPTH_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC2(struct scsi_device *scsi_dev, int depth,
				      int reason)
{
	if (reason != SCSI_QDEPTH_DEFAULT)
		return -EOPNOTSUPP;

	if (depth > PMCRAID_MAX_CMD_PER_LUN)
		depth = PMCRAID_MAX_CMD_PER_LUN;

	FUNC0(scsi_dev, FUNC1(scsi_dev), depth);

	return scsi_dev->queue_depth;
}