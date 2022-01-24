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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct ibmveth_adapter {scalar_t__ buffer_list_addr; int /*<<< orphan*/  rx_no_buffer; TYPE_1__* vdev; int /*<<< orphan*/  pool_config; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 long H_BUSY ; 
 scalar_t__ FUNC0 (long) ; 
 long H_SUCCESS ; 
 int /*<<< orphan*/  VIO_IRQ_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmveth_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,long) ; 
 struct ibmveth_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev)
{
	struct ibmveth_adapter *adapter = FUNC8(netdev);
	long lpar_rc;

	FUNC6(netdev, "close starting\n");

	FUNC5(&adapter->napi);

	if (!adapter->pool_config)
		FUNC9(netdev);

	FUNC3(adapter->vdev->unit_address, VIO_IRQ_DISABLE);

	do {
		lpar_rc = FUNC2(adapter->vdev->unit_address);
	} while (FUNC0(lpar_rc) || (lpar_rc == H_BUSY));

	if (lpar_rc != H_SUCCESS) {
		FUNC7(netdev, "h_free_logical_lan failed with %lx, "
			   "continuing with close\n", lpar_rc);
	}

	FUNC1(netdev->irq, netdev);

	adapter->rx_no_buffer = *(u64 *)(((char *)adapter->buffer_list_addr) +
						4096 - 8);

	FUNC4(adapter);

	FUNC6(netdev, "close complete\n");

	return 0;
}