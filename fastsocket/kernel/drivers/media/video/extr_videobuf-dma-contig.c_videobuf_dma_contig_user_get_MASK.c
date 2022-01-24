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
struct vm_area_struct {scalar_t__ vm_end; } ;
struct videobuf_dma_contig_memory {scalar_t__ size; int is_userptr; unsigned long dma_handle; } ;
struct videobuf_buffer {scalar_t__ baddr; int /*<<< orphan*/  size; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC2 (struct mm_struct*,scalar_t__) ; 
 int FUNC3 (struct vm_area_struct*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct videobuf_dma_contig_memory *mem,
					struct videobuf_buffer *vb)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	unsigned long prev_pfn, this_pfn;
	unsigned long pages_done, user_address;
	int ret;

	mem->size = FUNC0(vb->size);
	mem->is_userptr = 0;
	ret = -EINVAL;

	FUNC1(&mm->mmap_sem);

	vma = FUNC2(mm, vb->baddr);
	if (!vma)
		goto out_up;

	if ((vb->baddr + mem->size) > vma->vm_end)
		goto out_up;

	pages_done = 0;
	prev_pfn = 0; /* kill warning */
	user_address = vb->baddr;

	while (pages_done < (mem->size >> PAGE_SHIFT)) {
		ret = FUNC3(vma, user_address, &this_pfn);
		if (ret)
			break;

		if (pages_done == 0)
			mem->dma_handle = this_pfn << PAGE_SHIFT;
		else if (this_pfn != (prev_pfn + 1))
			ret = -EFAULT;

		if (ret)
			break;

		prev_pfn = this_pfn;
		user_address += PAGE_SIZE;
		pages_done++;
	}

	if (!ret)
		mem->is_userptr = 1;

 out_up:
	FUNC4(&current->mm->mmap_sem);

	return ret;
}