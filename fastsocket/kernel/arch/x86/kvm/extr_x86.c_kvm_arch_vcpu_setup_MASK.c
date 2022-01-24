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
struct TYPE_4__ {int have_fixed; } ;
struct TYPE_5__ {TYPE_1__ mtrr_state; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* vcpu_free ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 TYPE_3__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

int FUNC5(struct kvm_vcpu *vcpu)
{
	int r;

	vcpu->arch.mtrr_state.have_fixed = 1;
	FUNC3(vcpu);
	r = FUNC0(vcpu);
	if (r == 0)
		r = FUNC1(vcpu);
	FUNC4(vcpu);
	if (r < 0)
		goto free_vcpu;

	return 0;
free_vcpu:
	kvm_x86_ops->vcpu_free(vcpu);
	return r;
}