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
struct scsi_cmnd {int eh_eflags; int /*<<< orphan*/  eh_entry; TYPE_1__* device; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  host_failed; int /*<<< orphan*/  eh_cmd_q; scalar_t__ last_reset; scalar_t__ eh_deadline; int /*<<< orphan*/  ehandler; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHOST_CANCEL_RECOVERY ; 
 int /*<<< orphan*/  SHOST_RECOVERY ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 scalar_t__ FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC5(struct scsi_cmnd *scmd, int eh_flag)
{
	struct Scsi_Host *shost = scmd->device->host;
	unsigned long flags;
	int ret = 0;

	if (!shost->ehandler)
		return 0;

	FUNC3(shost->host_lock, flags);
	if (FUNC2(shost, SHOST_RECOVERY))
		if (FUNC2(shost, SHOST_CANCEL_RECOVERY))
			goto out_unlock;

	if (shost->eh_deadline && !shost->last_reset)
		shost->last_reset = jiffies;

	ret = 1;
	scmd->eh_eflags |= eh_flag;
	FUNC0(&scmd->eh_entry, &shost->eh_cmd_q);
	shost->host_failed++;
	FUNC1(shost);
 out_unlock:
	FUNC4(shost->host_lock, flags);
	return ret;
}