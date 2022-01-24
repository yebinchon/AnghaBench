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
struct TYPE_5__ {scalar_t__ root_level; scalar_t__ (* sync_page ) (struct kvm_vcpu*,struct kvm_mmu_page*) ;} ;
struct TYPE_6__ {TYPE_2__ mmu; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_3__ arch; } ;
struct TYPE_4__ {scalar_t__ glevels; } ;
struct kvm_mmu_page {int /*<<< orphan*/  gfn; TYPE_1__ role; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kvm_mmu_page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_mmu_page*) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp)
{
	if (sp->role.glevels != vcpu->arch.mmu.root_level) {
		FUNC2(vcpu->kvm, sp);
		return 1;
	}

	FUNC6(sp);
	if (FUNC4(vcpu->kvm, sp->gfn))
		FUNC0(vcpu->kvm);
	FUNC3(vcpu->kvm, sp);
	if (vcpu->arch.mmu.sync_page(vcpu, sp)) {
		FUNC2(vcpu->kvm, sp);
		return 1;
	}

	FUNC1(vcpu);
	return 0;
}