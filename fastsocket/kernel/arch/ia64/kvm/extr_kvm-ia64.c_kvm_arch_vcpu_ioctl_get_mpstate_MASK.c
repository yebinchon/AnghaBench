#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mp_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mp_state {int /*<<< orphan*/  mp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 

int FUNC2(struct kvm_vcpu *vcpu,
				    struct kvm_mp_state *mp_state)
{
	FUNC0(vcpu);
	mp_state->mp_state = vcpu->arch.mp_state;
	FUNC1(vcpu);
	return 0;
}