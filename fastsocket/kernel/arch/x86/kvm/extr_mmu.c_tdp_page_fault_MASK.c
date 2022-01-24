#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  root_hpa; } ;
struct TYPE_6__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  int gva_t ;
typedef  int gfn_t ;
struct TYPE_7__ {unsigned long mmu_notifier_seq; int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (int) ; 
 int PAGE_SHIFT ; 
 int PFERR_WRITE_MASK ; 
 struct kvm_vcpu* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvm_vcpu*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct kvm_vcpu *vcpu, gva_t gpa,
				u32 error_code)
{
	pfn_t pfn;
	int r;
	int level;
	gfn_t gfn = gpa >> PAGE_SHIFT;
	unsigned long mmu_seq;

	FUNC0(vcpu);
	FUNC0(FUNC2(vcpu->arch.mmu.root_hpa));

	r = FUNC11(vcpu);
	if (r)
		return r;

	mmu_seq = vcpu->kvm->mmu_notifier_seq;
	FUNC12();
	level = FUNC9(vcpu, gfn);

	gfn &= ~(FUNC1(level) - 1);

	pfn = FUNC4(vcpu->kvm, gfn);
	if (FUNC5(pfn))
		return FUNC6(vcpu->kvm, gfn, pfn);
	FUNC13(&vcpu->kvm->mmu_lock);
	if (FUNC10(vcpu, mmu_seq))
		goto out_unlock;
	FUNC7(vcpu);
	r = FUNC3(vcpu, gpa, error_code & PFERR_WRITE_MASK,
			 level, gfn, pfn);
	FUNC14(&vcpu->kvm->mmu_lock);

	return r;

out_unlock:
	FUNC14(&vcpu->kvm->mmu_lock);
	FUNC8(pfn);
	return 0;
}