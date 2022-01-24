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
struct ctlr_info {int scan_finished; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  scan_wait_queue; TYPE_1__* scsi_host; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ctlr_info*,int /*<<< orphan*/ ) ; 
 struct ctlr_info* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct Scsi_Host *sh)
{
	struct ctlr_info *h = FUNC1(sh);
	unsigned long flags;

	/* wait until any scan already in progress is finished. */
	while (1) {
		FUNC2(&h->scan_lock, flags);
		if (h->scan_finished)
			break;
		FUNC3(&h->scan_lock, flags);
		FUNC4(h->scan_wait_queue, h->scan_finished);
		/* Note: We don't need to worry about a race between this
		 * thread and driver unload because the midlayer will
		 * have incremented the reference count, so unload won't
		 * happen if we're in here.
		 */
	}
	h->scan_finished = 0; /* mark scan as in progress */
	FUNC3(&h->scan_lock, flags);

	FUNC0(h, h->scsi_host->host_no);

	FUNC2(&h->scan_lock, flags);
	h->scan_finished = 1; /* mark scan as finished. */
	FUNC5(&h->scan_wait_queue);
	FUNC3(&h->scan_lock, flags);
}