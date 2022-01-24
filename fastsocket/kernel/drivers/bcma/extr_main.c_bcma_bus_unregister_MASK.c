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
struct bcma_device {int dummy; } ;
struct bcma_bus {int /*<<< orphan*/  drv_cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_4706_MAC_GBIT_COMMON ; 
 int /*<<< orphan*/  BCMA_CORE_MIPS_74K ; 
 int /*<<< orphan*/  BCMA_CORE_PCIE ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_bus*,char*,...) ; 
 struct bcma_device* FUNC1 (struct bcma_bus*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_device*) ; 

void FUNC5(struct bcma_bus *bus)
{
	struct bcma_device *cores[3];
	int err;

	err = FUNC2(&bus->drv_cc);
	if (err == -EBUSY)
		FUNC0(bus, "Some GPIOs are still in use.\n");
	else if (err)
		FUNC0(bus, "Can not unregister GPIO driver: %i\n", err);

	cores[0] = FUNC1(bus, BCMA_CORE_MIPS_74K);
	cores[1] = FUNC1(bus, BCMA_CORE_PCIE);
	cores[2] = FUNC1(bus, BCMA_CORE_4706_MAC_GBIT_COMMON);

	FUNC3(bus);

	FUNC4(cores[2]);
	FUNC4(cores[1]);
	FUNC4(cores[0]);
}