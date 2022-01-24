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
struct vmxnet3_adapter {int num_tx_queues; int /*<<< orphan*/  shared_pa; int /*<<< orphan*/  shared; int /*<<< orphan*/  pdev; int /*<<< orphan*/  queue_desc_pa; int /*<<< orphan*/  tqd_start; int /*<<< orphan*/  pm_conf; int /*<<< orphan*/  rss_conf; int /*<<< orphan*/  work; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct Vmxnet3_TxQueueDesc {int dummy; } ;
struct Vmxnet3_RxQueueDesc {int dummy; } ;
struct Vmxnet3_DriverShared {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_DEVICE_MAX_RX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ enable_mq ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct vmxnet3_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static void
FUNC12(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct vmxnet3_adapter *adapter = FUNC4(netdev);
	int size = 0;
	int num_rx_queues;

#ifdef VMXNET3_RSS
	if (enable_mq)
		num_rx_queues = min(VMXNET3_DEVICE_MAX_RX_QUEUES,
				    (int)num_online_cpus());
	else
#endif
		num_rx_queues = 1;
	num_rx_queues = FUNC8(num_rx_queues);

	FUNC0(&adapter->work);

	FUNC9(netdev);

	FUNC10(adapter);
	FUNC11(adapter);
#ifdef VMXNET3_RSS
	kfree(adapter->rss_conf);
#endif
	FUNC2(adapter->pm_conf);

	size = sizeof(struct Vmxnet3_TxQueueDesc) * adapter->num_tx_queues;
	size += sizeof(struct Vmxnet3_RxQueueDesc) * num_rx_queues;
	FUNC6(adapter->pdev, size, adapter->tqd_start,
			    adapter->queue_desc_pa);
	FUNC6(adapter->pdev, sizeof(struct Vmxnet3_DriverShared),
			    adapter->shared, adapter->shared_pa);
	FUNC1(netdev);
}