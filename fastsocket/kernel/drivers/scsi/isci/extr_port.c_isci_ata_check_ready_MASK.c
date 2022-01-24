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
struct isci_remote_device {int dummy; } ;
struct isci_port {int /*<<< orphan*/  active_phy_mask; int /*<<< orphan*/  state; } ;
struct isci_host {int /*<<< orphan*/  scic_lock; } ;
struct domain_device {TYPE_1__* port; } ;
struct TYPE_2__ {struct isci_port* lldd_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPORT_RESET_PENDING ; 
 struct isci_host* FUNC0 (struct domain_device*) ; 
 struct isci_remote_device* FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_remote_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct domain_device *dev)
{
	struct isci_port *iport = dev->port->lldd_port;
	struct isci_host *ihost = FUNC0(dev);
	struct isci_remote_device *idev;
	unsigned long flags;
	int rc = 0;

	FUNC3(&ihost->scic_lock, flags);
	idev = FUNC1(dev);
	FUNC4(&ihost->scic_lock, flags);

	if (!idev)
		goto out;

	if (FUNC5(IPORT_RESET_PENDING, &iport->state))
		goto out;

	rc = !!iport->active_phy_mask;
 out:
	FUNC2(idev);

	return rc;
}