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
struct net_device {int /*<<< orphan*/  name; } ;
struct ixgbe_adapter {int flags; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int IXGBE_FLAG_MSIX_ENABLED ; 
 int IXGBE_FLAG_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ixgbe_intr ; 
 int FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ixgbe_adapter*) ; 

__attribute__((used)) static int FUNC3(struct ixgbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err;

	if (adapter->flags & IXGBE_FLAG_MSIX_ENABLED)
		err = FUNC1(adapter);
	else if (adapter->flags & IXGBE_FLAG_MSI_ENABLED)
		err = FUNC2(adapter->pdev->irq, ixgbe_intr, 0,
				  netdev->name, adapter);
	else
		err = FUNC2(adapter->pdev->irq, ixgbe_intr, IRQF_SHARED,
				  netdev->name, adapter);

	if (err)
		FUNC0(probe, "request_irq failed, Error %d\n", err);

	return err;
}