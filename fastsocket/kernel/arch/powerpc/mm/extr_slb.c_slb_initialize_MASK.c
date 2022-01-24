#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long vmalloc_sllp; int kstack; int /*<<< orphan*/  stab_rr; } ;
struct TYPE_3__ {unsigned long sllp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_ISERIES ; 
 int PAGE_OFFSET ; 
 int /*<<< orphan*/  SLB_NUM_BOLTED ; 
 unsigned long SLB_VSID_KERNEL ; 
 int VMALLOC_START ; 
 scalar_t__ boot_cpuid ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned long,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 () ; 
 size_t mmu_io_psize ; 
 int /*<<< orphan*/  mmu_kernel_ssize ; 
 size_t mmu_linear_psize ; 
 TYPE_1__* mmu_psize_defs ; 
 unsigned long mmu_slb_size ; 
 size_t mmu_vmalloc_psize ; 
 size_t mmu_vmemmap_psize ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(void)
{
	unsigned long linear_llp, vmalloc_llp, io_llp;
	unsigned long lflags, vflags;
	static int slb_encoding_inited;
	extern unsigned int *slb_miss_kernel_load_linear;
	extern unsigned int *slb_miss_kernel_load_io;
	extern unsigned int *slb_compare_rr_to_size;
#ifdef CONFIG_SPARSEMEM_VMEMMAP
	extern unsigned int *slb_miss_kernel_load_vmemmap;
	unsigned long vmemmap_llp;
#endif

	/* Prepare our SLB miss handler based on our page size */
	linear_llp = mmu_psize_defs[mmu_linear_psize].sllp;
	io_llp = mmu_psize_defs[mmu_io_psize].sllp;
	vmalloc_llp = mmu_psize_defs[mmu_vmalloc_psize].sllp;
	FUNC2()->vmalloc_sllp = SLB_VSID_KERNEL | vmalloc_llp;
#ifdef CONFIG_SPARSEMEM_VMEMMAP
	vmemmap_llp = mmu_psize_defs[mmu_vmemmap_psize].sllp;
#endif
	if (!slb_encoding_inited) {
		slb_encoding_inited = 1;
		FUNC3(slb_miss_kernel_load_linear,
				   SLB_VSID_KERNEL | linear_llp);
		FUNC3(slb_miss_kernel_load_io,
				   SLB_VSID_KERNEL | io_llp);
		FUNC3(slb_compare_rr_to_size,
				   mmu_slb_size);

		FUNC4("SLB: linear  LLP = %04lx\n", linear_llp);
		FUNC4("SLB: io      LLP = %04lx\n", io_llp);

#ifdef CONFIG_SPARSEMEM_VMEMMAP
		patch_slb_encoding(slb_miss_kernel_load_vmemmap,
				   SLB_VSID_KERNEL | vmemmap_llp);
		pr_devel("SLB: vmemmap LLP = %04lx\n", vmemmap_llp);
#endif
	}

	FUNC2()->stab_rr = SLB_NUM_BOLTED;

	/* On iSeries the bolted entries have already been set up by
	 * the hypervisor from the lparMap data in head.S */
	if (FUNC1(FW_FEATURE_ISERIES))
		return;

	lflags = SLB_VSID_KERNEL | linear_llp;
	vflags = SLB_VSID_KERNEL | vmalloc_llp;

	/* Invalidate the entire SLB (even slot 0) & all the ERATS */
	asm volatile("isync":::"memory");
	asm volatile("slbmte  %0,%0"::"r" (0) : "memory");
	asm volatile("isync; slbia; isync":::"memory");
	FUNC0(PAGE_OFFSET, mmu_kernel_ssize, lflags, 0);

	FUNC0(VMALLOC_START, mmu_kernel_ssize, vflags, 1);

	/* For the boot cpu, we're running on the stack in init_thread_union,
	 * which is in the first segment of the linear mapping, and also
	 * get_paca()->kstack hasn't been initialized yet.
	 * For secondary cpus, we need to bolt the kernel stack entry now.
	 */
	FUNC7(2);
	if (FUNC5() != boot_cpuid &&
	    (FUNC2()->kstack & FUNC6(mmu_kernel_ssize)) > PAGE_OFFSET)
		FUNC0(FUNC2()->kstack,
				     mmu_kernel_ssize, lflags, 2);

	asm volatile("isync":::"memory");
}