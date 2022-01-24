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
typedef  int u64 ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_4__ {int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
struct TYPE_5__ {int /*<<< orphan*/  lpages; } ;
struct TYPE_6__ {TYPE_2__ stat; } ;

/* Variables and functions */
 int PT64_BASE_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_mmu_page*,int*) ; 
 struct kvm_mmu_page* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  shadow_trap_nonpresent_pte ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu,
				  struct kvm_mmu_page *sp,
				  u64 *spte)
{
	u64 pte;
	struct kvm_mmu_page *child;

	pte = *spte;
	if (FUNC3(pte)) {
		if (FUNC2(pte, sp->role.level))
			FUNC6(vcpu->kvm, spte);
		else {
			child = FUNC5(pte & PT64_BASE_ADDR_MASK);
			FUNC4(child, spte);
		}
	}
	FUNC0(spte, shadow_trap_nonpresent_pte);
	if (FUNC1(pte))
		--vcpu->kvm->stat.lpages;
}