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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ S6_REG_INTC ; 
 char** platform_irq_mappings ; 
 unsigned long* scp_to_intc_enable ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned int irq, int enable)
{
	unsigned long en;
	const signed char *m = platform_irq_mappings[irq];

	if (!m)
		return;
	en = enable ? scp_to_intc_enable[irq] : 0;
	while (*m >= 0) {
		FUNC1(en, S6_REG_INTC + FUNC0(*m));
		m++;
	}
}