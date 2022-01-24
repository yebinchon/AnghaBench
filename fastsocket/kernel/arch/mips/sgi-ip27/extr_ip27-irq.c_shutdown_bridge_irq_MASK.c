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
struct bridge_controller {TYPE_1__* base; } ;
typedef  int /*<<< orphan*/  cpuid_t ;
struct TYPE_2__ {int b_int_enable; int /*<<< orphan*/  b_wid_tflush; } ;
typedef  TYPE_1__ bridge_t ;

/* Variables and functions */
 struct bridge_controller* FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int irq)
{
	struct bridge_controller *bc = FUNC0(irq);
	bridge_t *bridge = bc->base;
	int pin, swlevel;
	cpuid_t cpu;

	FUNC4("bridge_shutdown: irq 0x%x\n", irq);
	pin = FUNC1(irq);

	/*
	 * map irq to a swlevel greater than 6 since the first 6 bits
	 * of INT_PEND0 are taken
	 */
	swlevel = FUNC2(&cpu, irq);
	FUNC3(cpu, swlevel);

	bridge->b_int_enable &= ~(1 << pin);
	bridge->b_wid_tflush;
}