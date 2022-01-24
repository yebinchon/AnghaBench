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
struct i2c_adapter {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  i2c_adapter_idr ; 
 struct i2c_adapter* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct i2c_adapter* FUNC4(int id)
{
	struct i2c_adapter *adapter;

	FUNC1(&core_lock);
	adapter = FUNC0(&i2c_adapter_idr, id);
	if (adapter && !FUNC3(adapter->owner))
		adapter = NULL;

	FUNC2(&core_lock);
	return adapter;
}