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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 scalar_t__ KVM_MIN_FREE_MMU_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct kvm_vcpu *vcpu)
{
	if (FUNC2(FUNC1(vcpu->kvm)< KVM_MIN_FREE_MMU_PAGES))
		FUNC0(vcpu);
}