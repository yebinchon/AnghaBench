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
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ op_mode; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ QLCNIC_NON_PRIV_FUNC ; 
 struct qlcnic_adapter* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (struct qlcnic_adapter*,char const*,size_t) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 int FUNC5 (struct qlcnic_adapter*,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				   struct device_attribute *attr,
				   const char *buf, size_t len)
{
	struct qlcnic_adapter *adapter = FUNC0(dev);
	int err = 0;

	if (adapter->ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
		FUNC1(dev,
			 "LED test not supported in non privileged mode\n");
		return -EOPNOTSUPP;
	}

	if (FUNC2(adapter))
		err = FUNC3(adapter, buf, len);
	else if (FUNC4(adapter))
		err = FUNC5(adapter, buf, len);
	else
		return -EIO;

	return err;
}