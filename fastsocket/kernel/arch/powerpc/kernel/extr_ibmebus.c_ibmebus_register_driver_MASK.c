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
struct of_platform_driver {int /*<<< orphan*/  match_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  ibmebus_bus_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct of_platform_driver*,int /*<<< orphan*/ *) ; 

int FUNC2(struct of_platform_driver *drv)
{
	/* If the driver uses devices that ibmebus doesn't know, add them */
	FUNC0(drv->match_table);

	return FUNC1(drv, &ibmebus_bus_type);
}