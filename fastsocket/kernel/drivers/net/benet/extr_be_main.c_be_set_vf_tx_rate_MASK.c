#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct be_adapter {int num_vfs; TYPE_2__* vf_cfg; TYPE_1__* pdev; } ;
struct TYPE_4__ {int tx_rate; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FUNC0 (struct be_adapter*,int,int) ; 
 int FUNC1 (struct be_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 struct be_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
			int vf, int rate)
{
	struct be_adapter *adapter = FUNC4(netdev);
	int status = 0;

	if (!FUNC5(adapter))
		return -EPERM;

	if (vf >= adapter->num_vfs)
		return -EINVAL;

	if (rate < 100 || rate > 10000) {
		FUNC2(&adapter->pdev->dev,
			"tx rate must be between 100 and 10000 Mbps\n");
		return -EINVAL;
	}

	if (FUNC3(adapter))
		status = FUNC0(adapter, rate / 10, vf + 1);
	else
		status = FUNC1(adapter, rate / 10, vf + 1);

	if (status)
		FUNC2(&adapter->pdev->dev,
				"tx rate %d on VF %d failed\n", rate, vf);
	else
		adapter->vf_cfg[vf].tx_rate = rate;
	return status;
}