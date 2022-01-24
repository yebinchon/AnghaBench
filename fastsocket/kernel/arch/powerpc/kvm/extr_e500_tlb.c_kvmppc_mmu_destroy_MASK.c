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
struct kvmppc_vcpu_e500 {int* guest_tlb_size; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_vcpu_e500*,int,int) ; 
 struct kvmppc_vcpu_e500* FUNC2 (struct kvm_vcpu*) ; 

void FUNC3(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC2(vcpu);
	int tlbsel, i;

	for (tlbsel = 0; tlbsel < 2; tlbsel++)
		for (i = 0; i < vcpu_e500->guest_tlb_size[tlbsel]; i++)
			FUNC1(vcpu_e500, tlbsel, i);

	/* discard all guest mapping */
	FUNC0();
}