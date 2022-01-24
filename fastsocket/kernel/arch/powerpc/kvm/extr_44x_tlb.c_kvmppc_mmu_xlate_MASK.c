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
struct kvmppc_vcpu_44x {struct kvmppc_44x_tlbe* guest_tlb; } ;
struct kvmppc_44x_tlbe {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  unsigned int gva_t ;
typedef  unsigned int gpa_t ;

/* Variables and functions */
 int FUNC0 (struct kvmppc_44x_tlbe*) ; 
 unsigned int FUNC1 (struct kvmppc_44x_tlbe*) ; 
 struct kvmppc_vcpu_44x* FUNC2 (struct kvm_vcpu*) ; 

gpa_t FUNC3(struct kvm_vcpu *vcpu, unsigned int gtlb_index,
                       gva_t eaddr)
{
	struct kvmppc_vcpu_44x *vcpu_44x = FUNC2(vcpu);
	struct kvmppc_44x_tlbe *gtlbe = &vcpu_44x->guest_tlb[gtlb_index];
	unsigned int pgmask = FUNC0(gtlbe) - 1;

	return FUNC1(gtlbe) | (eaddr & pgmask);
}