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
struct scsi_device {int /*<<< orphan*/  starved_entry; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {scalar_t__ host_busy; scalar_t__ host_blocked; int /*<<< orphan*/  starved_list; int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct Scsi_Host*) ; 
 scalar_t__ FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static inline int FUNC7(struct request_queue *q,
				   struct Scsi_Host *shost,
				   struct scsi_device *sdev)
{
	if (FUNC5(shost))
		return 0;
	if (shost->host_busy == 0 && shost->host_blocked) {
		/*
		 * unblock after host_blocked iterates to zero
		 */
		if (--shost->host_blocked == 0) {
			FUNC0(3,
				FUNC4("scsi%d unblocking host at zero depth\n",
					shost->host_no));
		} else {
			return 0;
		}
	}
	if (FUNC6(shost)) {
		if (FUNC3(&sdev->starved_entry))
			FUNC1(&sdev->starved_entry, &shost->starved_list);
		return 0;
	}

	/* We're OK to process the command, so we can't be starved */
	if (!FUNC3(&sdev->starved_entry))
		FUNC2(&sdev->starved_entry);

	return 1;
}