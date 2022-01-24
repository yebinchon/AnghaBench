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
typedef  int u64 ;
struct tlbe {int dummy; } ;
struct kvmppc_vcpu_e500 {struct tlbe** guest_tlb; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int gva_t ;
typedef  int gpa_t ;

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 int FUNC1 (struct tlbe*) ; 
 int FUNC2 (struct tlbe*) ; 
 size_t FUNC3 (unsigned int) ; 
 struct kvmppc_vcpu_e500* FUNC4 (struct kvm_vcpu*) ; 

gpa_t FUNC5(struct kvm_vcpu *vcpu, unsigned int index,
			gva_t eaddr)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC4(vcpu);
	struct tlbe *gtlbe =
		&vcpu_e500->guest_tlb[FUNC3(index)][FUNC0(index)];
	u64 pgmask = FUNC1(gtlbe) - 1;

	return FUNC2(gtlbe) | (eaddr & pgmask);
}