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
typedef  int /*<<< orphan*/  u64 ;
struct ocrdma_ucontext {int /*<<< orphan*/  mm_list_lock; int /*<<< orphan*/  mm_head; } ;
struct TYPE_2__ {unsigned long len; int /*<<< orphan*/  phy_addr; } ;
struct ocrdma_mm {int /*<<< orphan*/  entry; TYPE_1__ key; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocrdma_mm* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ocrdma_ucontext *uctx, u64 phy_addr,
			   unsigned long len)
{
	struct ocrdma_mm *mm;

	mm = FUNC1(sizeof(*mm), GFP_KERNEL);
	if (mm == NULL)
		return -ENOMEM;
	mm->key.phy_addr = phy_addr;
	mm->key.len = len;
	FUNC0(&mm->entry);

	FUNC3(&uctx->mm_list_lock);
	FUNC2(&mm->entry, &uctx->mm_head);
	FUNC4(&uctx->mm_list_lock);
	return 0;
}