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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  parisc_bus_type ; 
 int /*<<< orphan*/  root ; 

void FUNC4(void)
{
	if (FUNC0(&parisc_bus_type))
		FUNC3("Could not register PA-RISC bus type\n");
	if (FUNC1(&root))
		FUNC3("Could not register PA-RISC root device\n");
	FUNC2(&root);
}