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
typedef  void* u32 ;
struct net_device {int dummy; } ;
struct ibmveth_adapter {int pool_config; void* fw_ipv6_csum_support; TYPE_1__* vdev; void* fw_ipv4_csum_support; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int EIO ; 
 long H_SUCCESS ; 
 unsigned long IBMVETH_ILLAN_ACTIVE_TRUNK ; 
 unsigned long IBMVETH_ILLAN_IPV4_TCP_CSUM ; 
 unsigned long IBMVETH_ILLAN_IPV6_TCP_CSUM ; 
 unsigned long IBMVETH_ILLAN_PADDED_PKT_CSUM ; 
 unsigned long IBMVETH_ILLAN_TRUNK_PRI_MASK ; 
 long FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,void*,long,...) ; 
 struct ibmveth_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, u32 data,
				    void (*done) (struct net_device *, u32))
{
	struct ibmveth_adapter *adapter = FUNC4(dev);
	unsigned long set_attr, clr_attr, ret_attr;
	unsigned long set_attr6, clr_attr6;
	long ret, ret6;
	int rc1 = 0, rc2 = 0;
	int restart = 0;

	if (FUNC5(dev)) {
		restart = 1;
		adapter->pool_config = 1;
		FUNC1(dev);
		adapter->pool_config = 0;
	}

	set_attr = 0;
	clr_attr = 0;

	if (data) {
		set_attr = IBMVETH_ILLAN_IPV4_TCP_CSUM;
		set_attr6 = IBMVETH_ILLAN_IPV6_TCP_CSUM;
	} else {
		clr_attr = IBMVETH_ILLAN_IPV4_TCP_CSUM;
		clr_attr6 = IBMVETH_ILLAN_IPV6_TCP_CSUM;
	}

	ret = FUNC0(adapter->vdev->unit_address, 0, 0, &ret_attr);

	if (ret == H_SUCCESS && !(ret_attr & IBMVETH_ILLAN_ACTIVE_TRUNK) &&
	    !(ret_attr & IBMVETH_ILLAN_TRUNK_PRI_MASK) &&
	    (ret_attr & IBMVETH_ILLAN_PADDED_PKT_CSUM)) {
		ret = FUNC0(adapter->vdev->unit_address, clr_attr,
					 set_attr, &ret_attr);

		if (ret != H_SUCCESS) {
			FUNC3(dev, "unable to change IPv4 checksum "
					"offload settings. %d rc=%ld\n",
					data, ret);

			ret = FUNC0(adapter->vdev->unit_address,
						 set_attr, clr_attr, &ret_attr);
		} else {
			adapter->fw_ipv4_csum_support = data;
		}

		ret6 = FUNC0(adapter->vdev->unit_address,
					 clr_attr6, set_attr6, &ret_attr);

		if (ret6 != H_SUCCESS) {
			FUNC3(dev, "unable to change IPv6 checksum "
					"offload settings. %d rc=%ld\n",
					data, ret);

			ret = FUNC0(adapter->vdev->unit_address,
						 set_attr6, clr_attr6,
						 &ret_attr);
		} else
			adapter->fw_ipv6_csum_support = data;

		if (ret == H_SUCCESS || ret6 == H_SUCCESS)
			done(dev, data);
		else
			rc1 = -EIO;
	} else {
		rc1 = -EIO;
		FUNC3(dev, "unable to change checksum offload settings."
				     " %d rc=%ld ret_attr=%lx\n", data, ret,
				     ret_attr);
	}

	if (restart)
		rc2 = FUNC2(dev);

	return rc1 ? rc1 : rc2;
}