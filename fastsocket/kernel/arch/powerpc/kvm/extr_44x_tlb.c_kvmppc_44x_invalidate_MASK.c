#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvmppc_vcpu_44x {struct kvmppc_44x_shadow_ref* shadow_refs; } ;
struct kvmppc_44x_shadow_ref {unsigned int gtlb_index; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvmppc_44x_shadow_ref*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_vcpu_44x*,int) ; 
 struct kvmppc_vcpu_44x* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu,
                                  unsigned int gtlb_index)
{
	struct kvmppc_vcpu_44x *vcpu_44x = FUNC2(vcpu);
	int i;

	for (i = 0; i < FUNC0(vcpu_44x->shadow_refs); i++) {
		struct kvmppc_44x_shadow_ref *ref = &vcpu_44x->shadow_refs[i];
		if (ref->gtlb_index == gtlb_index)
			FUNC1(vcpu_44x, i);
	}
}