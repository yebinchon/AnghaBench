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
struct TYPE_2__ {unsigned long sllp; } ;

/* Variables and functions */
 unsigned long SLB_VSID_KERNEL ; 
 int /*<<< orphan*/  VMALLOC_START ; 
 int /*<<< orphan*/  mmu_kernel_ssize ; 
 TYPE_1__* mmu_psize_defs ; 
 size_t mmu_vmalloc_psize ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 

void FUNC2(void)
{
	unsigned long vflags;

	vflags = SLB_VSID_KERNEL | mmu_psize_defs[mmu_vmalloc_psize].sllp;
	FUNC1(VMALLOC_START, mmu_kernel_ssize, vflags, 1);
	FUNC0();
}