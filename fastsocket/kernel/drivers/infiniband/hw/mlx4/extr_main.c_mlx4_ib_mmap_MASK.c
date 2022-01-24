#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_pgoff; int /*<<< orphan*/  vm_page_prot; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {scalar_t__ pfn; } ;
struct TYPE_8__ {TYPE_1__ uar; } ;
struct TYPE_6__ {scalar_t__ bf_reg_size; scalar_t__ num_uars; } ;
struct TYPE_7__ {TYPE_2__ caps; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC5(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	struct mlx4_ib_dev *dev = FUNC3(context->device);

	if (vma->vm_end - vma->vm_start != PAGE_SIZE)
		return -EINVAL;

	if (vma->vm_pgoff == 0) {
		vma->vm_page_prot = FUNC1(vma->vm_page_prot);

		if (FUNC0(vma, vma->vm_start,
				       FUNC4(context)->uar.pfn,
				       PAGE_SIZE, vma->vm_page_prot))
			return -EAGAIN;
	} else if (vma->vm_pgoff == 1 && dev->dev->caps.bf_reg_size != 0) {
		vma->vm_page_prot = FUNC2(vma->vm_page_prot);

		if (FUNC0(vma, vma->vm_start,
				       FUNC4(context)->uar.pfn +
				       dev->dev->caps.num_uars,
				       PAGE_SIZE, vma->vm_page_prot))
			return -EAGAIN;
	} else
		return -EINVAL;

	return 0;
}