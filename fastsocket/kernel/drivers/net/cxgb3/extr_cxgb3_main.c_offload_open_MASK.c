#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct t3cdev {TYPE_3__* lldev; } ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ rev; int /*<<< orphan*/  b_wnd; int /*<<< orphan*/  a_wnd; int /*<<< orphan*/  mtus; } ;
struct adapter {int open_device_map; TYPE_3__** port; TYPE_1__ params; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {int mtu; TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFLOAD_DEVMAP_BIT ; 
 int PORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct t3cdev*) ; 
 int FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct t3cdev*) ; 
 int FUNC4 (struct adapter*) ; 
 struct t3cdev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 struct port_info* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  offload_attr_group ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct port_info *pi = FUNC9(dev);
	struct adapter *adapter = pi->adapter;
	struct t3cdev *tdev = FUNC5(dev);
	int adap_up = adapter->open_device_map & PORT_MASK;
	int err;

	if (FUNC13(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map))
		return 0;

	if (!adap_up && (err = FUNC4(adapter)) < 0)
		goto out;

	FUNC12(adapter, 1);
	tdev->lldev = adapter->port[0];
	err = FUNC2(adapter);
	if (err)
		goto out;

	FUNC7(adapter);
	FUNC11(adapter, adapter->params.mtus, adapter->params.a_wnd,
		     adapter->params.b_wnd,
		     adapter->params.rev == 0 ?
		     adapter->port[0]->mtu : 0xffff);
	FUNC8(adapter);

	if (FUNC10(&tdev->lldev->dev.kobj, &offload_attr_group))
		FUNC6(&dev->dev, "cannot create sysfs group\n");

	/* Call back all registered clients */
	FUNC1(tdev);

out:
	/* restore them in case the offload module has changed them */
	if (err) {
		FUNC12(adapter, 0);
		FUNC0(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map);
		FUNC3(tdev);
	}
	return err;
}