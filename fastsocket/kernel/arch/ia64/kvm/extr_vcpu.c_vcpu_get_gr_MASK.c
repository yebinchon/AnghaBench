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
typedef  unsigned long u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long*,int /*<<< orphan*/ ,struct kvm_pt_regs*) ; 
 struct kvm_pt_regs* FUNC1 (struct kvm_vcpu*) ; 

u64 FUNC2(struct kvm_vcpu *vcpu, unsigned long reg)
{
	struct kvm_pt_regs *regs = FUNC1(vcpu);
	unsigned long val;

	if (!reg)
		return 0;
	FUNC0(reg, &val, 0, regs);
	return val;
}