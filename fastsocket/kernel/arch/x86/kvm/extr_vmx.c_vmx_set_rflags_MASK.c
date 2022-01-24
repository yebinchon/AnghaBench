#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {unsigned long save_rflags; scalar_t__ vm86_active; } ;
struct TYPE_4__ {TYPE_1__ rmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_RFLAGS ; 
 unsigned long X86_EFLAGS_IOPL ; 
 unsigned long X86_EFLAGS_VM ; 
 TYPE_2__* FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, unsigned long rflags)
{
	if (FUNC0(vcpu)->rmode.vm86_active) {
		FUNC0(vcpu)->rmode.save_rflags = rflags;
		rflags |= X86_EFLAGS_IOPL | X86_EFLAGS_VM;
	}
	FUNC1(GUEST_RFLAGS, rflags);
}