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
struct ctlr_info {int nr_cmds; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int SCSI_QDEPTH_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 struct ctlr_info* FUNC2 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev,
	int qdepth, int reason)
{
	struct ctlr_info *h = FUNC2(sdev);

	if (reason != SCSI_QDEPTH_DEFAULT)
		return -ENOTSUPP;

	if (qdepth < 1)
		qdepth = 1;
	else
		if (qdepth > h->nr_cmds)
			qdepth = h->nr_cmds;
	FUNC0(sdev, FUNC1(sdev), qdepth);
	return sdev->queue_depth;
}