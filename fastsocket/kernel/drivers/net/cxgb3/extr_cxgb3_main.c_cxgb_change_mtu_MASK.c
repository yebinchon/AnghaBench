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
struct port_info {int /*<<< orphan*/  mac; struct adapter* adapter; } ;
struct net_device {int mtu; } ;
struct TYPE_3__ {scalar_t__ rev; int /*<<< orphan*/  b_wnd; int /*<<< orphan*/  a_wnd; int /*<<< orphan*/  mtus; } ;
struct adapter {TYPE_2__** port; TYPE_1__ params; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 struct port_info* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int new_mtu)
{
	struct port_info *pi = FUNC1(dev);
	struct adapter *adapter = pi->adapter;
	int ret;

	if (new_mtu < 81)	/* accommodate SACK */
		return -EINVAL;
	if ((ret = FUNC4(&pi->mac, new_mtu)))
		return ret;
	dev->mtu = new_mtu;
	FUNC0(adapter);
	if (adapter->params.rev == 0 && FUNC2(adapter))
		FUNC3(adapter, adapter->params.mtus,
			     adapter->params.a_wnd, adapter->params.b_wnd,
			     adapter->port[0]->mtu);
	return 0;
}