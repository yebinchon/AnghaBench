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
typedef  int u64 ;
struct TYPE_3__ {int msr_val; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ pv_eoi; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int KVM_MSR_ENABLED ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu, u64 data)
{
	u64 addr = data & ~KVM_MSR_ENABLED;
	if (!FUNC0(addr, 4))
		return 1;

	vcpu->arch.pv_eoi.msr_val = data;
	if (!FUNC2(vcpu))
		return 0;
	return FUNC1(vcpu->kvm, &vcpu->arch.pv_eoi.data,
					 addr);
}