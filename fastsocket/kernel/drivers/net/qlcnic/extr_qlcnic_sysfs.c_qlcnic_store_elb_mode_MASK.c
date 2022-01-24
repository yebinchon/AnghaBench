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
struct qlcnic_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  QLCNIC_ELB_MODE ; 
 int /*<<< orphan*/  __QLCNIC_ELB_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qlcnic_adapter* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t len)
{
	struct qlcnic_adapter *adapter = FUNC1(dev);
	unsigned long new;
	int err;

	if (FUNC5(buf, 2, &new))
		return -EINVAL;

	if (new == FUNC6(__QLCNIC_ELB_INPROGRESS, &adapter->state))
		return len;

	FUNC3();
	err = FUNC2(adapter->netdev, QLCNIC_ELB_MODE);
	FUNC4();

	FUNC0(__QLCNIC_ELB_INPROGRESS, &adapter->state);

	if (!err)
		err = len;

	return err;
}