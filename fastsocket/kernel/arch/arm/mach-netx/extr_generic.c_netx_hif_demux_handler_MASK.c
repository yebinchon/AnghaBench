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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  NETX_DPMAS_INT_EN ; 
 int /*<<< orphan*/  NETX_DPMAS_INT_STAT ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(unsigned int irq_unused, struct irq_desc *desc)
{
	unsigned int irq = FUNC1(0);
	unsigned int stat;

	stat = ((FUNC3(NETX_DPMAS_INT_EN) &
		FUNC3(NETX_DPMAS_INT_STAT)) >> 24) & 0x1f;

	while (stat) {
		if (stat & 1) {
			FUNC0("handling irq %d\n", irq);
			FUNC2(irq);
		}
		irq++;
		stat >>= 1;
	}
}