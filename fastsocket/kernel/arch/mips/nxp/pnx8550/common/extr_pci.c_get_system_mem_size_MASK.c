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
 int PCI_BASE ; 
 unsigned long FUNC0 (int) ; 

__attribute__((used)) static inline unsigned long FUNC1(void)
{
	/* Read IP2031_RANK0_ADDR_LO */
	unsigned long dram_r0_lo = FUNC0(PCI_BASE | 0x65010);
	/* Read IP2031_RANK1_ADDR_HI */
	unsigned long dram_r1_hi = FUNC0(PCI_BASE | 0x65018);

	return dram_r1_hi - dram_r0_lo + 1;
}