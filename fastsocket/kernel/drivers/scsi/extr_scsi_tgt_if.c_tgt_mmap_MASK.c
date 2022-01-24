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
struct vm_area_struct {int vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int TGT_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  rx_ring ; 
 int /*<<< orphan*/  tx_ring ; 
 int FUNC1 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct file *filp, struct vm_area_struct *vma)
{
	unsigned long addr;
	int err;

	if (vma->vm_pgoff)
		return -EINVAL;

	if (vma->vm_end - vma->vm_start != TGT_RING_SIZE * 2) {
		FUNC0("mmap size must be %lu, not %lu \n",
			TGT_RING_SIZE * 2, vma->vm_end - vma->vm_start);
		return -EINVAL;
	}

	addr = vma->vm_start;
	err = FUNC1(vma, addr, &tx_ring);
	if (err)
		return err;
	err = FUNC1(vma, addr + TGT_RING_SIZE, &rx_ring);

	return err;
}