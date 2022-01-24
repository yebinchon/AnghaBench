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
struct net_device {int dummy; } ;
struct ibmveth_adapter {int /*<<< orphan*/  napi; TYPE_1__* vdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long H_SUCCESS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  VIO_IRQ_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct ibmveth_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_instance)
{
	struct net_device *netdev = dev_instance;
	struct ibmveth_adapter *adapter = FUNC4(netdev);
	unsigned long lpar_rc;

	if (FUNC3(&adapter->napi)) {
		lpar_rc = FUNC2(adapter->vdev->unit_address,
				       VIO_IRQ_DISABLE);
		FUNC0(lpar_rc != H_SUCCESS);
		FUNC1(&adapter->napi);
	}
	return IRQ_HANDLED;
}