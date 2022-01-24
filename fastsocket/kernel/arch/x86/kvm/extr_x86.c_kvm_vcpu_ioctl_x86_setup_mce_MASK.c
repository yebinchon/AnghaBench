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
typedef  int u64 ;
struct TYPE_2__ {int mcg_cap; int mcg_ctl; int* mce_banks; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int KVM_MAX_MCE_BANKS ; 
 int KVM_MCE_CAP_SUPPORTED ; 
 int MCG_CTL_P ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu,
					u64 mcg_cap)
{
	int r;
	unsigned bank_num = mcg_cap & 0xff, bank;

	FUNC0(vcpu);
	r = -EINVAL;
	if (!bank_num || bank_num >= KVM_MAX_MCE_BANKS)
		goto out;
	if (mcg_cap & ~(KVM_MCE_CAP_SUPPORTED | 0xff | 0xff0000))
		goto out;
	r = 0;
	vcpu->arch.mcg_cap = mcg_cap;
	/* Init IA32_MCG_CTL to all 1s */
	if (mcg_cap & MCG_CTL_P)
		vcpu->arch.mcg_ctl = ~(u64)0;
	/* Init IA32_MCi_CTL to all 1s */
	for (bank = 0; bank < bank_num; bank++)
		vcpu->arch.mce_banks[bank*4] = ~(u64)0;
out:
	FUNC1(vcpu);
	return r;
}