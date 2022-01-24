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
struct kvm_vcpu {int /*<<< orphan*/  requests; struct kvm_run* run; } ;
struct TYPE_2__ {int is_write; int /*<<< orphan*/  rip; } ;
struct kvm_run {TYPE_1__ tpr_access; } ;
struct kvm_lapic {struct kvm_vcpu* vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_REPORT_TPR_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct kvm_lapic *apic, bool write)
{
	struct kvm_vcpu *vcpu = apic->vcpu;
	struct kvm_run *run = vcpu->run;

	FUNC1(KVM_REQ_REPORT_TPR_ACCESS, &vcpu->requests);
	run->tpr_access.rip = FUNC0(vcpu);
	run->tpr_access.is_write = write;
}