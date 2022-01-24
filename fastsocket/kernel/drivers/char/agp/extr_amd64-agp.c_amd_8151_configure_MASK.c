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
struct TYPE_4__ {int /*<<< orphan*/  gart_bus_addr; int /*<<< orphan*/  gatt_table_real; } ;
struct TYPE_3__ {int /*<<< orphan*/  misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_NB_GART ; 
 TYPE_2__* agp_bridge ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 TYPE_1__* FUNC4 (int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	unsigned long gatt_bus = FUNC5(agp_bridge->gatt_table_real);
	int i;

	if (!FUNC2(AMD_NB_GART))
		return 0;

	/* Configure AGP regs in each x86-64 host bridge. */
	for (i = 0; i < FUNC3(); i++) {
		agp_bridge->gart_bus_addr =
			FUNC0(FUNC4(i)->misc, gatt_bus);
	}
	FUNC1();
	return 0;
}