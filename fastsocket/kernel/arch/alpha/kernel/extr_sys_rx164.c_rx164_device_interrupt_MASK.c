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
 scalar_t__ POLARIS_DENSE_CONFIG_BASE ; 
 long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void 
FUNC3(unsigned long vector)
{
	unsigned long pld;
	volatile unsigned int *dirr;
	long i;

	/* Read the interrupt summary register.  On Polaris, this is
	   the DIRR register in PCI config space (offset 0x84).  */
	dirr = (void *)(POLARIS_DENSE_CONFIG_BASE + 0x84);
	pld = *dirr;

	/*
	 * Now for every possible bit set, work through them and call
	 * the appropriate interrupt handler.
	 */
	while (pld) {
		i = FUNC0(~pld);
		pld &= pld - 1; /* clear least bit set */
		if (i == 20) {
			FUNC2(vector);
		} else {
			FUNC1(16+i);
		}
	}
}