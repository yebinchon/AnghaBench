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
struct ql_adapter {int port_link_up; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STS ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ql_adapter*) ; 
 int FUNC3 (struct ql_adapter*,int) ; 

int FUNC4(struct ql_adapter *qdev)
{
	int status, set;

	/* If check if the link is up and use to
	 * determine if we are setting or clearing
	 * the MAC address in the CAM.
	 */
	set = FUNC1(qdev, STS);
	set &= qdev->port_link_up;
	status = FUNC3(qdev, set);
	if (status) {
		FUNC0(qdev, ifup, qdev->ndev, "Failed to init mac address.\n");
		return status;
	}

	status = FUNC2(qdev);
	if (status)
		FUNC0(qdev, ifup, qdev->ndev, "Failed to init routing table.\n");

	return status;
}