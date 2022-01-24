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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_vcpu_e500*,int,int) ; 
 int FUNC2 () ; 
 struct kvmppc_vcpu_e500* FUNC3 (struct kvm_vcpu*) ; 

void FUNC4(struct kvm_vcpu *vcpu, int usermode)
{
	if (usermode) {
		struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC3(vcpu);
		int i;

		/* XXX Replace loop with fancy data structures. */
		for (i = 0; i < FUNC2(); i++)
			FUNC1(vcpu_e500, 1, i);

		FUNC0();
	}
}