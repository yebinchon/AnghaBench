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
struct scsi_device {int /*<<< orphan*/  queue_depth; scalar_t__ tagged_supported; scalar_t__ hostdata; } ;
struct pmcraid_resource_entry {int /*<<< orphan*/  cfg_entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int) ; 

__attribute__((used)) static int FUNC5(struct scsi_device *scsi_dev, int tag)
{
	struct pmcraid_resource_entry *res;

	res = (struct pmcraid_resource_entry *)scsi_dev->hostdata;

	if ((res) && scsi_dev->tagged_supported &&
	    (FUNC0(res->cfg_entry) || FUNC1(res->cfg_entry))) {
		FUNC4(scsi_dev, tag);

		if (tag)
			FUNC2(scsi_dev, scsi_dev->queue_depth);
		else
			FUNC3(scsi_dev, scsi_dev->queue_depth);
	} else
		tag = 0;

	return tag;
}