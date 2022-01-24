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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {int /*<<< orphan*/  mmu_page_cache; int /*<<< orphan*/  mmu_page_header_cache; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ arch; } ;
struct kvm_mmu_page {int /*<<< orphan*/ * parent_pte; scalar_t__ multimapped; int /*<<< orphan*/  slot_bitmap; int /*<<< orphan*/  oos_link; int /*<<< orphan*/  link; void* spt; void* gfns; } ;
struct TYPE_5__ {int /*<<< orphan*/  active_mmu_pages; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ KVM_MEMORY_SLOTS ; 
 scalar_t__ KVM_PRIVATE_MEM_SLOTS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static struct kvm_mmu_page *FUNC7(struct kvm_vcpu *vcpu,
					       u64 *parent_pte)
{
	struct kvm_mmu_page *sp;

	sp = FUNC4(&vcpu->arch.mmu_page_header_cache, sizeof *sp);
	sp->spt = FUNC4(&vcpu->arch.mmu_page_cache, PAGE_SIZE);
	sp->gfns = FUNC4(&vcpu->arch.mmu_page_cache, PAGE_SIZE);
	FUNC5(FUNC6(sp->spt), (unsigned long)sp);
	FUNC3(&sp->link, &vcpu->kvm->arch.active_mmu_pages);
	FUNC0(&sp->oos_link);
	FUNC1(sp->slot_bitmap, KVM_MEMORY_SLOTS + KVM_PRIVATE_MEM_SLOTS);
	sp->multimapped = 0;
	sp->parent_pte = parent_pte;
	FUNC2(vcpu->kvm, +1);
	return sp;
}