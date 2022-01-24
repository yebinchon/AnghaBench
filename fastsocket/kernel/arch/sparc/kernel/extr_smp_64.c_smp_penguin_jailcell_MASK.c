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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ penguins_are_doing_time ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  smp_capture_registry ; 

void FUNC8(int irq, struct pt_regs *regs)
{
	FUNC2(1 << irq);

	FUNC4();

	__asm__ __volatile__("flushw");
	FUNC6(1);
	FUNC1(&smp_capture_registry);
	FUNC3("#StoreLoad");
	while (penguins_are_doing_time)
		FUNC7();
	FUNC0(&smp_capture_registry);
	FUNC6(0);

	FUNC5();
}