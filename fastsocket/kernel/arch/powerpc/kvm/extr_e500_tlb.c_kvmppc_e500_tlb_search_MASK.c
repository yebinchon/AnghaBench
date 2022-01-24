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
struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int,unsigned int,int) ; 
 struct kvmppc_vcpu_e500* FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu,
				gva_t eaddr, unsigned int pid, int as)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC2(vcpu);
	int esel, tlbsel;

	for (tlbsel = 0; tlbsel < 2; tlbsel++) {
		esel = FUNC1(vcpu_e500, eaddr, tlbsel, pid, as);
		if (esel >= 0)
			return FUNC0(tlbsel, esel);
	}

	return -1;
}