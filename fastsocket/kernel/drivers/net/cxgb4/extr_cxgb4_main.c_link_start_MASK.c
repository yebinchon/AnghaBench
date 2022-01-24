#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct port_info {int xact_addr_filt; int /*<<< orphan*/  viid; TYPE_1__* adapter; int /*<<< orphan*/  link_cfg; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/ * vlan_grp; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct TYPE_5__ {unsigned int fn; } ;

/* Variables and functions */
 struct port_info* FUNC0 (struct net_device*) ; 
 int FUNC1 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	int ret;
	struct port_info *pi = FUNC0(dev);
	unsigned int mb = pi->adapter->fn;

	/*
	 * We do not set address filters and promiscuity here, the stack does
	 * that step explicitly.
	 */
	ret = FUNC4(pi->adapter, mb, pi->viid, dev->mtu, -1, -1, -1,
			    pi->vlan_grp != NULL, true);
	if (ret == 0) {
		ret = FUNC1(pi->adapter, mb, pi->viid,
				    pi->xact_addr_filt, dev->dev_addr, true,
				    true);
		if (ret >= 0) {
			pi->xact_addr_filt = ret;
			ret = 0;
		}
	}
	if (ret == 0)
		ret = FUNC3(pi->adapter, mb, pi->tx_chan,
				    &pi->link_cfg);
	if (ret == 0)
		ret = FUNC2(pi->adapter, mb, pi->viid, true, true);
	return ret;
}