#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int gfn_t ;
struct TYPE_3__ {unsigned long mmu_notifier_seq; int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PT_DIRECTORY_LEVEL ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct kvm_vcpu *vcpu, gva_t v, int write, gfn_t gfn)
{
	int r;
	int level;
	pfn_t pfn;
	unsigned long mmu_seq;

	mmu_seq = vcpu->kvm->mmu_notifier_seq;
	FUNC9();
	level = FUNC7(vcpu, gfn);

	/*
	 * This path builds a PAE pagetable - so we can map 2mb pages at
	 * maximum. Therefore check if the level is larger than that.
	 */
	if (level > PT_DIRECTORY_LEVEL)
		level = PT_DIRECTORY_LEVEL;

	gfn &= ~(FUNC0(level) - 1);

	pfn = FUNC2(vcpu->kvm, gfn);

	/* mmio */
	if (FUNC3(pfn))
		return FUNC4(vcpu->kvm, gfn, pfn);

	FUNC10(&vcpu->kvm->mmu_lock);
	if (FUNC8(vcpu, mmu_seq))
		goto out_unlock;
	FUNC5(vcpu);
	r = FUNC1(vcpu, v, write, level, gfn, pfn);
	FUNC11(&vcpu->kvm->mmu_lock);


	return r;

out_unlock:
	FUNC11(&vcpu->kvm->mmu_lock);
	FUNC6(pfn);
	return 0;
}