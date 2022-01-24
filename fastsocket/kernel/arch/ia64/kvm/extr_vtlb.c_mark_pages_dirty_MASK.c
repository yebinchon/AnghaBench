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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  dirty_log_lock_pa; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 scalar_t__ KVM_MEM_DIRTY_LOG_BASE ; 
 int PAGE_SHIFT ; 
 int _PAGE_PPN_MASK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm_vcpu *v, u64 pte, u64 ps)
{
	u64 i, dirty_pages = 1;
	u64 base_gfn = (pte&_PAGE_PPN_MASK) >> PAGE_SHIFT;
	spinlock_t *lock = FUNC0(v->arch.dirty_log_lock_pa);
	void *dirty_bitmap = (void *)KVM_MEM_DIRTY_LOG_BASE;

	dirty_pages <<= ps <= PAGE_SHIFT ? 0 : ps - PAGE_SHIFT;

	FUNC3(lock);
	for (i = 0; i < dirty_pages; i++) {
		/* avoid RMW */
		if (!FUNC2(base_gfn + i, dirty_bitmap))
			FUNC1(base_gfn + i , dirty_bitmap);
	}
	FUNC4(lock);
}