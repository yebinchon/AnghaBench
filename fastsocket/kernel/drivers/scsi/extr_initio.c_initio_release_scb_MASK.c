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
struct scsi_ctrl_blk {struct scsi_ctrl_blk* next; scalar_t__ status; int /*<<< orphan*/ * srb; } ;
struct initio_host {int /*<<< orphan*/  avail_lock; struct scsi_ctrl_blk* last_avail; struct scsi_ctrl_blk* first_avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct initio_host * host, struct scsi_ctrl_blk * cmnd)
{
	unsigned long flags;

#if DEBUG_QUEUE
	printk("Release SCB %p; ", cmnd);
#endif
	FUNC1(&(host->avail_lock), flags);
	cmnd->srb = NULL;
	cmnd->status = 0;
	cmnd->next = NULL;
	if (host->last_avail != NULL) {
		host->last_avail->next = cmnd;
		host->last_avail = cmnd;
	} else {
		host->first_avail = cmnd;
		host->last_avail = cmnd;
	}
	FUNC2(&(host->avail_lock), flags);
}