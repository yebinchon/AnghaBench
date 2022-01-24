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
struct TYPE_6__ {int /*<<< orphan*/  root_hpa; } ;
struct TYPE_7__ {TYPE_2__ mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__* kvm; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_cr3 ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 TYPE_4__* kvm_x86_ops ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

int FUNC6(struct kvm_vcpu *vcpu)
{
	int r;

	r = FUNC2(vcpu);
	if (r)
		goto out;
	r = FUNC0(vcpu);
	FUNC3(&vcpu->kvm->mmu_lock);
	FUNC1(vcpu);
	FUNC4(&vcpu->kvm->mmu_lock);
	if (r)
		goto out;
	/* set_cr3() should ensure TLB has been flushed */
	kvm_x86_ops->set_cr3(vcpu, vcpu->arch.mmu.root_hpa);
out:
	return r;
}