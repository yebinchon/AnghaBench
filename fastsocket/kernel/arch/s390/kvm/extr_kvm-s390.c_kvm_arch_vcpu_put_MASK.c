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
struct TYPE_2__ {int /*<<< orphan*/  host_acrs; int /*<<< orphan*/  host_fpregs; int /*<<< orphan*/  guest_acrs; int /*<<< orphan*/  guest_fpregs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	FUNC3(&vcpu->arch.guest_fpregs);
	FUNC2(vcpu->arch.guest_acrs);
	FUNC1(&vcpu->arch.host_fpregs);
	FUNC0(vcpu->arch.host_acrs);
}