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
struct vm_area_struct {int vm_pgoff; struct nes_ucontext* vm_private_data; int /*<<< orphan*/  vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  sq_vbase; } ;
struct nes_ucontext {int mmap_wq_offset; int* mmap_db_index; int /*<<< orphan*/  allocated_doorbells; TYPE_2__ hwqp; struct nes_ucontext** mmap_nesqp; int /*<<< orphan*/  allocated_wqs; } ;
struct nes_qp {int mmap_wq_offset; int* mmap_db_index; int /*<<< orphan*/  allocated_doorbells; TYPE_2__ hwqp; struct nes_qp** mmap_nesqp; int /*<<< orphan*/  allocated_wqs; } ;
struct nes_hw_qp_wqe {int dummy; } ;
struct nes_device {int doorbell_start; int base_doorbell_index; TYPE_1__* nesadapter; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int max_qp_wr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int ENOSYS ; 
 int /*<<< orphan*/  NES_DBG_MMAP ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 struct nes_ucontext* FUNC5 (struct ib_ucontext*) ; 
 struct nes_vnic* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	unsigned long index;
	struct nes_vnic *nesvnic = FUNC6(context->device);
	struct nes_device *nesdev = nesvnic->nesdev;
	/* struct nes_adapter *nesadapter = nesdev->nesadapter; */
	struct nes_ucontext *nes_ucontext;
	struct nes_qp *nesqp;

	nes_ucontext = FUNC5(context);


	if (vma->vm_pgoff >= nes_ucontext->mmap_wq_offset) {
		index = (vma->vm_pgoff - nes_ucontext->mmap_wq_offset) * PAGE_SIZE;
		index /= ((sizeof(struct nes_hw_qp_wqe) * nesdev->nesadapter->max_qp_wr * 2) +
				PAGE_SIZE-1) & (~(PAGE_SIZE-1));
		if (!FUNC4(index, nes_ucontext->allocated_wqs)) {
			FUNC1(NES_DBG_MMAP, "wq %lu not allocated\n", index);
			return -EFAULT;
		}
		nesqp = nes_ucontext->mmap_nesqp[index];
		if (nesqp == NULL) {
			FUNC1(NES_DBG_MMAP, "wq %lu has a NULL QP base.\n", index);
			return -EFAULT;
		}
		if (FUNC3(vma, vma->vm_start,
				FUNC7(nesqp->hwqp.sq_vbase) >> PAGE_SHIFT,
				vma->vm_end - vma->vm_start,
				vma->vm_page_prot)) {
			FUNC1(NES_DBG_MMAP, "remap_pfn_range failed.\n");
			return -EAGAIN;
		}
		vma->vm_private_data = nesqp;
		return 0;
	} else {
		index = vma->vm_pgoff;
		if (!FUNC4(index, nes_ucontext->allocated_doorbells))
			return -EFAULT;

		vma->vm_page_prot = FUNC2(vma->vm_page_prot);
		if (FUNC0(vma, vma->vm_start,
				(nesdev->doorbell_start +
				((nes_ucontext->mmap_db_index[index] - nesdev->base_doorbell_index) * 4096))
				>> PAGE_SHIFT, PAGE_SIZE, vma->vm_page_prot))
			return -EAGAIN;
		vma->vm_private_data = nes_ucontext;
		return 0;
	}

	return -ENOSYS;
}