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
 int EBUSY ; 
 int /*<<< orphan*/  NR_IRQS_LEGACY ; 
 int FUNC0 (char*,int,int,int,unsigned long,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long,int) ; 

int FUNC5(char *irq_name, int cpu, int mmr_blade,
		 unsigned long mmr_offset, int limit)
{
	int irq, ret;

	irq = FUNC1(NR_IRQS_LEGACY, FUNC3(mmr_blade));

	if (irq <= 0)
		return -EBUSY;

	ret = FUNC0(irq_name, irq, cpu, mmr_blade, mmr_offset,
		limit);
	if (ret == irq)
		FUNC4(irq, mmr_offset, mmr_blade);
	else
		FUNC2(irq);

	return ret;
}