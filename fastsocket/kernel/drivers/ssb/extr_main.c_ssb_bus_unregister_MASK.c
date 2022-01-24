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
struct ssb_bus {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct ssb_bus*) ; 

void FUNC7(struct ssb_bus *bus)
{
	FUNC1();
	FUNC3(bus);
	FUNC0(&bus->list);
	FUNC2();

	FUNC6(bus);
	FUNC5(bus);
	FUNC4(bus);
}