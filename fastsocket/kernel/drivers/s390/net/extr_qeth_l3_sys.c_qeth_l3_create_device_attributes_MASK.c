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
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  qeth_device_ipato_group ; 
 int /*<<< orphan*/  qeth_device_rxip_group ; 
 int /*<<< orphan*/  qeth_device_vipa_group ; 
 int /*<<< orphan*/  qeth_l3_device_attr_group ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct device *dev)
{
	int ret;

	ret = FUNC0(&dev->kobj, &qeth_l3_device_attr_group);
	if (ret)
		return ret;

	ret = FUNC0(&dev->kobj, &qeth_device_ipato_group);
	if (ret) {
		FUNC1(&dev->kobj, &qeth_l3_device_attr_group);
		return ret;
	}

	ret = FUNC0(&dev->kobj, &qeth_device_vipa_group);
	if (ret) {
		FUNC1(&dev->kobj, &qeth_l3_device_attr_group);
		FUNC1(&dev->kobj, &qeth_device_ipato_group);
		return ret;
	}

	ret = FUNC0(&dev->kobj, &qeth_device_rxip_group);
	if (ret) {
		FUNC1(&dev->kobj, &qeth_l3_device_attr_group);
		FUNC1(&dev->kobj, &qeth_device_ipato_group);
		FUNC1(&dev->kobj, &qeth_device_vipa_group);
		return ret;
	}
	return 0;
}