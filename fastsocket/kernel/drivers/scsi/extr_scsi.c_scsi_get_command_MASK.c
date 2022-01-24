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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  cmd_list; int /*<<< orphan*/  host; } ;
struct scsi_cmnd {int /*<<< orphan*/  jiffies_at_alloc; int /*<<< orphan*/  list; struct scsi_device* device; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct scsi_cmnd* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

struct scsi_cmnd *FUNC8(struct scsi_device *dev, gfp_t gfp_mask)
{
	struct scsi_cmnd *cmd;

	/* Bail if we can't get a reference to the device */
	if (!FUNC2(&dev->sdev_gendev))
		return NULL;

	cmd = FUNC1(dev->host, gfp_mask);

	if (FUNC3(cmd != NULL)) {
		unsigned long flags;

		cmd->device = dev;
		FUNC0(&cmd->list);
		FUNC6(&dev->list_lock, flags);
		FUNC4(&cmd->list, &dev->cmd_list);
		FUNC7(&dev->list_lock, flags);
		cmd->jiffies_at_alloc = jiffies;
	} else
		FUNC5(&dev->sdev_gendev);

	return cmd;
}