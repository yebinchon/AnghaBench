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
struct TYPE_2__ {int /*<<< orphan*/  cr0; int /*<<< orphan*/  cr0_guest_owned_bits; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR0_GUEST_HOST_MASK ; 
 int /*<<< orphan*/  CR0_READ_SHADOW ; 
 int /*<<< orphan*/  GUEST_CR0 ; 
 int /*<<< orphan*/  X86_CR0_TS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	FUNC3(vcpu);
	FUNC1(GUEST_CR0, X86_CR0_TS);
	FUNC0(vcpu);
	vcpu->arch.cr0_guest_owned_bits = 0;
	FUNC2(CR0_GUEST_HOST_MASK, ~vcpu->arch.cr0_guest_owned_bits);
	FUNC2(CR0_READ_SHADOW, vcpu->arch.cr0);
}