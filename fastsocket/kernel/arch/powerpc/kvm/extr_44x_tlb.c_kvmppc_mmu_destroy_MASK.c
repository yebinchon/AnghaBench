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
struct kvmppc_vcpu_44x {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvmppc_vcpu_44x*,int) ; 
 int tlb_44x_hwater ; 
 struct kvmppc_vcpu_44x* FUNC1 (struct kvm_vcpu*) ; 

void FUNC2(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_44x *vcpu_44x = FUNC1(vcpu);
	int i;

	for (i = 0; i <= tlb_44x_hwater; i++)
		FUNC0(vcpu_44x, i);
}