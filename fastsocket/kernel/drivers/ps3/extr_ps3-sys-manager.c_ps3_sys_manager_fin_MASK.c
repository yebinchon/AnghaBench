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
struct ps3_system_bus_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct ps3_system_bus_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps3_system_bus_device*) ; 

__attribute__((used)) static void FUNC4(struct ps3_system_bus_device *dev)
{
	FUNC3(dev);

	FUNC1("System Halted, OK to turn off power\n");

	while (FUNC2(dev)) {
		/* pause until next DEC interrupt */
		FUNC0(0);
	}

	while (1) {
		/* pause, ignoring DEC interrupt */
		FUNC0(1);
	}
}