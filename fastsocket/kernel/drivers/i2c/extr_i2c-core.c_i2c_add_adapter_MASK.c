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
struct i2c_adapter {int nr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  __i2c_first_dynamic_bus_num ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  i2c_adapter_idr ; 
 int FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct i2c_adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct i2c_adapter *adapter)
{
	int	id, res = 0;

retry:
	if (FUNC2(&i2c_adapter_idr, GFP_KERNEL) == 0)
		return -ENOMEM;

	FUNC3(&core_lock);
	/* "above" here means "above or equal to", sigh */
	res = FUNC1(&i2c_adapter_idr, adapter,
				__i2c_first_dynamic_bus_num, &id);
	FUNC4(&core_lock);

	if (res < 0) {
		if (res == -EAGAIN)
			goto retry;
		return res;
	}

	adapter->nr = id;
	return FUNC0(adapter);
}