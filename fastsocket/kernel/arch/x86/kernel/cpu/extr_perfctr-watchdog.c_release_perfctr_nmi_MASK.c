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
 unsigned int NMI_MAX_COUNTER_BITS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  perfctr_nmi_owner ; 

void FUNC2(unsigned int msr)
{
	unsigned int counter;

	counter = FUNC1(msr);
	/* register not managed by the allocator? */
	if (counter > NMI_MAX_COUNTER_BITS)
		return;

	FUNC0(counter, perfctr_nmi_owner);
}