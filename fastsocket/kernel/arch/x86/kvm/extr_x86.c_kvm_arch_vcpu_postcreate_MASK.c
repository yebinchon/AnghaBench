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
struct msr_data {int data; int host_initiated; int /*<<< orphan*/  index; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_TSC ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct msr_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu)
{
	struct msr_data msr;

	FUNC1(vcpu);
	msr.data = 0x0;
	msr.index = MSR_IA32_TSC;
	msr.host_initiated = true;
	FUNC0(vcpu, &msr);
	FUNC2(vcpu);

	return 0;
}