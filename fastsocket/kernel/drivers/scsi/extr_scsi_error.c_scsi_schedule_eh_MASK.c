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
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  host_eh_scheduled; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHOST_CANCEL_RECOVERY ; 
 int /*<<< orphan*/  SHOST_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 scalar_t__ FUNC1 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC4(struct Scsi_Host *shost)
{
	unsigned long flags;

	FUNC2(shost->host_lock, flags);

	if (FUNC1(shost, SHOST_RECOVERY) == 0 ||
	    FUNC1(shost, SHOST_CANCEL_RECOVERY) == 0) {
		shost->host_eh_scheduled++;
		FUNC0(shost);
	}

	FUNC3(shost->host_lock, flags);
}