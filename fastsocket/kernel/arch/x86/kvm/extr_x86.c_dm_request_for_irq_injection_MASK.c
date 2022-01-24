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
struct kvm_vcpu {TYPE_1__* run; int /*<<< orphan*/  kvm; } ;
struct TYPE_2__ {scalar_t__ request_interrupt_window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu)
{
	return (!FUNC0(vcpu->kvm) && !FUNC2(vcpu) &&
		vcpu->run->request_interrupt_window &&
		FUNC1(vcpu));
}