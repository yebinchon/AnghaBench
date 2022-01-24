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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct tlb_args {unsigned long ta_start; unsigned long ta_end; struct vm_area_struct* ta_vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  ipi_flush_tlb_range ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tlb_args*,int) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(struct vm_area_struct *vma,
                     unsigned long start, unsigned long end)
{
	if (FUNC3()) {
		struct tlb_args ta;
		ta.ta_vma = vma;
		ta.ta_start = start;
		ta.ta_end = end;
		FUNC2(FUNC1(vma->vm_mm), ipi_flush_tlb_range,
					&ta, 1);
	} else
		FUNC0(vma, start, end);
}