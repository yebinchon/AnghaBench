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
struct fnic {unsigned long state_flags; TYPE_1__* lport; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

void
FUNC3(struct fnic *fnic, unsigned long st_flags,
			unsigned long clearbits)
{
	struct Scsi_Host *host = fnic->lport->host;
	int sh_locked = FUNC0(host->host_lock);
	unsigned long flags = 0;

	if (!sh_locked)
		FUNC1(host->host_lock, flags);

	if (clearbits)
		fnic->state_flags &= ~st_flags;
	else
		fnic->state_flags |= st_flags;

	if (!sh_locked)
		FUNC2(host->host_lock, flags);

	return;
}