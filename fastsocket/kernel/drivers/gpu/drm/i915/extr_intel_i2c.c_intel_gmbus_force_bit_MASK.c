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
struct intel_gmbus {int force_bit; } ;
struct i2c_adapter {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int) ; 
 struct intel_gmbus* FUNC1 (struct i2c_adapter*) ; 

void FUNC2(struct i2c_adapter *adapter, bool force_bit)
{
	struct intel_gmbus *bus = FUNC1(adapter);

	bus->force_bit += force_bit ? 1 : -1;
	FUNC0("%sabling bit-banging on %s. force bit now %d\n",
		      force_bit ? "en" : "dis", adapter->name,
		      bus->force_bit);
}