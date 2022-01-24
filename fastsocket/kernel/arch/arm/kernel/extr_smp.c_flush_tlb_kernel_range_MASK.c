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
struct tlb_args {unsigned long ta_start; unsigned long ta_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  ipi_flush_tlb_kernel_range ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tlb_args*,int) ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(unsigned long start, unsigned long end)
{
	if (FUNC2()) {
		struct tlb_args ta;
		ta.ta_start = start;
		ta.ta_end = end;
		FUNC1(ipi_flush_tlb_kernel_range, &ta, 1);
	} else
		FUNC0(start, end);
}