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
struct scsi_cmnd {int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  cmd_pool; int /*<<< orphan*/  free_list_lock; int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct Scsi_Host *shost, struct scsi_cmnd *cmd,
			struct device *dev)
{
	unsigned long flags;

	/* changing locks here, don't need to restore the irq state */
	FUNC5(&shost->free_list_lock, flags);
	if (FUNC7(FUNC2(&shost->free_list))) {
		FUNC1(&cmd->list, &shost->free_list);
		cmd = NULL;
	}
	FUNC6(&shost->free_list_lock, flags);

	if (FUNC0(cmd != NULL))
		FUNC4(shost->cmd_pool, cmd);

	FUNC3(dev);
}