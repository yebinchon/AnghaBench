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
struct qlcnic_adapter {int flags; unsigned long max_sds_rings; int /*<<< orphan*/  state; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int QLCNIC_MSIX_ENABLED ; 
 int QLCNIC_MSI_ENABLED ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qlcnic_adapter* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,unsigned long) ; 
 int FUNC4 (struct qlcnic_adapter*,unsigned long,size_t) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int FUNC6 (struct qlcnic_adapter*,unsigned long) ; 
 scalar_t__ FUNC7 (char const*,int,unsigned long*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t len)
{
	struct qlcnic_adapter *adapter = FUNC1(dev);
	struct net_device *netdev = adapter->netdev;
	unsigned long data;
	int err;

	if (FUNC5(adapter))
		return -EOPNOTSUPP;

	if (FUNC8(__QLCNIC_RESETTING, &adapter->state))
		return -EBUSY;

	if (FUNC7(buf, 10, &data)) {
		err = -EINVAL;
		goto done;
	}

	if (!(adapter->flags & (QLCNIC_MSI_ENABLED | QLCNIC_MSIX_ENABLED))) {
		FUNC2(netdev, "no msix or msi support, hence no rss\n");
		err = -EINVAL;
		goto done;
	}

	if (data == adapter->max_sds_rings) {
		err = len;
		goto done;
	}

	err = FUNC6(adapter, data);
	if (err) {
		FUNC2(netdev,
			   "rss_ring valid range[1 - %d] in powers of 2\n",
			    err);
		err = -EINVAL;
		goto done;
	}

	err = FUNC4(adapter, data, len);
 done:
	FUNC0(__QLCNIC_RESETTING, &adapter->state);
	FUNC3(netdev, "allocated 0x%x sds rings\n",
			adapter->max_sds_rings);
	return err;
}