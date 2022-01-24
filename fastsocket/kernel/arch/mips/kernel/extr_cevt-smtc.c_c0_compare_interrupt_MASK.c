#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  vpe_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 TYPE_1__* cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

irqreturn_t FUNC6(int irq, void *dev_id)
{
	int cpu = FUNC3();

	/* If we're running SMTC, we've got MIPS MT and therefore MIPS32R2 */
	FUNC0(1);

	if (FUNC1() & (1 << 30)) {
		/* Clear Count/Compare Interrupt */
		FUNC5(FUNC2());
		FUNC4(cpu_data[cpu].vpe_id);
	}
	return IRQ_HANDLED;
}