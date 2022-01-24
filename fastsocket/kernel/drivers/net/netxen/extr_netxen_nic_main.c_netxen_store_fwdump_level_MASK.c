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
struct TYPE_4__ {unsigned long md_capture_mask; } ;
struct netxen_adapter {TYPE_2__ mdump; TYPE_1__* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 size_t EINVAL ; 
 unsigned long* FW_DUMP_LEVELS ; 
 struct netxen_adapter* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t size)
{
	int i;
	unsigned long int val;
	struct netxen_adapter *adapter = FUNC1(dev);

	val = FUNC5(buf, NULL, 16);

	for (i = 0; i < FUNC0(FW_DUMP_LEVELS); i++) {
		if (val == FW_DUMP_LEVELS[i]) {
			FUNC3();
			adapter->mdump.md_capture_mask = val;
			FUNC4();
			FUNC2(&adapter->pdev->dev,
				"Driver mask changed to: 0x%x\n",
				adapter->mdump.md_capture_mask);
			return size;
		}
	}
	FUNC2(dev, "Invalid Dump Level: 0x%lx\n",
		(unsigned long int) val);
	return -EINVAL;
}