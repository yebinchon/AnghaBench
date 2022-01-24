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
struct be_adapter {TYPE_1__* pdev; int /*<<< orphan*/  num_tx_qs; int /*<<< orphan*/  num_rx_qs; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct be_adapter*) ; 
 int FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*) ; 
 int FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct be_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int status;

	status = FUNC0(adapter);
	if (status)
		goto err;

	status = FUNC3(adapter);
	if (status)
		goto err;

	status = FUNC2(adapter);
	if (status)
		goto err;

	status = FUNC1(adapter);
	if (status)
		goto err;

	status = FUNC5(netdev, adapter->num_rx_qs);
	if (status)
		goto err;

	FUNC6(netdev, adapter->num_tx_qs);

	return 0;
err:
	FUNC4(&adapter->pdev->dev, "queue_setup failed\n");
	return status;
}