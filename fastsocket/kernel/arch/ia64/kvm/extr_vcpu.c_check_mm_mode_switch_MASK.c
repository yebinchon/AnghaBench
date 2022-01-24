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
struct kvm_vcpu {int dummy; } ;
struct ia64_psr {scalar_t__ dt; scalar_t__ it; scalar_t__ rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct ia64_psr,struct ia64_psr) ; 

void FUNC1(struct kvm_vcpu *vcpu,  struct ia64_psr old_psr,
					struct ia64_psr new_psr)
{

	if ((old_psr.dt != new_psr.dt)
			|| (old_psr.it != new_psr.it)
			|| (old_psr.rt != new_psr.rt))
		FUNC0(vcpu, old_psr, new_psr);

	return;
}