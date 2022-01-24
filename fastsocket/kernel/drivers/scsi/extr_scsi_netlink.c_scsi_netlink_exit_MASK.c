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

/* Variables and functions */
 int /*<<< orphan*/  SCSI_NL_TRANSPORT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_netlink_notifier ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ scsi_nl_sock ; 

void
FUNC3(void)
{
	FUNC2(SCSI_NL_TRANSPORT);

	if (scsi_nl_sock) {
		FUNC0(scsi_nl_sock);
		FUNC1(&scsi_netlink_notifier);
	}

	return;
}