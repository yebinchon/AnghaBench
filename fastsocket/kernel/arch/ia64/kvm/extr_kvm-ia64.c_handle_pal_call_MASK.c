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
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int hardware_exit_reason; } ;
struct kvm_run {TYPE_1__ hw; int /*<<< orphan*/  exit_reason; } ;
struct exit_ctl_data {scalar_t__ exit_reason; } ;

/* Variables and functions */
 scalar_t__ EXIT_REASON_PAL_CALL ; 
 int /*<<< orphan*/  KVM_EXIT_UNKNOWN ; 
 struct exit_ctl_data* FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*,struct kvm_run*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
	struct exit_ctl_data *p;

	p = FUNC0(vcpu);

	if (p->exit_reason == EXIT_REASON_PAL_CALL)
		return FUNC1(vcpu, kvm_run);
	else {
		kvm_run->exit_reason = KVM_EXIT_UNKNOWN;
		kvm_run->hw.hardware_exit_reason = 2;
		return 0;
	}
}