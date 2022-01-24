#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_fault {unsigned long pgoff; scalar_t__ virtual_address; } ;
struct vm_area_struct {int vm_start; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_mm; TYPE_1__* vm_file; } ;
struct spu_state {int use_big_pages; TYPE_2__* lscsa; } ;
struct spu_context {scalar_t__ state; TYPE_3__* spu; struct spu_state csa; } ;
struct TYPE_6__ {unsigned long local_store_phys; } ;
struct TYPE_5__ {scalar_t__ ls; } ;
struct TYPE_4__ {struct spu_context* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long LS_SIZE ; 
 int MMU_PAGE_64K ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ SPU_STATE_SAVED ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_SIGBUS ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 unsigned long FUNC8 (scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct spu_context *ctx	= vma->vm_file->private_data;
	unsigned long address = (unsigned long)vmf->virtual_address;
	unsigned long pfn, offset;

#ifdef CONFIG_SPU_FS_64K_LS
	struct spu_state *csa = &ctx->csa;
	int psize;

	/* Check what page size we are using */
	psize = get_slice_psize(vma->vm_mm, address);

	/* Some sanity checking */
	BUG_ON(csa->use_big_pages != (psize == MMU_PAGE_64K));

	/* Wow, 64K, cool, we need to align the address though */
	if (csa->use_big_pages) {
		BUG_ON(vma->vm_start & 0xffff);
		address &= ~0xfffful;
	}
#endif /* CONFIG_SPU_FS_64K_LS */

	offset = vmf->pgoff << PAGE_SHIFT;
	if (offset >= LS_SIZE)
		return VM_FAULT_SIGBUS;

	FUNC4("spufs_mem_mmap_fault address=0x%lx, offset=0x%lx\n",
			address, offset);

	if (FUNC5(ctx))
		return VM_FAULT_NOPAGE;

	if (ctx->state == SPU_STATE_SAVED) {
		vma->vm_page_prot = FUNC2(vma->vm_page_prot);
		pfn = FUNC8(ctx->csa.lscsa->ls + offset);
	} else {
		vma->vm_page_prot = FUNC3(vma->vm_page_prot);
		pfn = (ctx->spu->local_store_phys + offset) >> PAGE_SHIFT;
	}
	FUNC7(vma, address, pfn);

	FUNC6(ctx);

	return VM_FAULT_NOPAGE;
}