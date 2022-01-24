#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  r1; int /*<<< orphan*/  r3; } ;
struct TYPE_5__ {TYPE_1__ M46; } ;
typedef  TYPE_2__ INST64 ;

/* Variables and functions */
 int IA64_FAULT ; 
 int IA64_NO_FAULT ; 
 unsigned long FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,unsigned long,unsigned long*) ; 

int FUNC3(struct kvm_vcpu *vcpu, INST64 inst)
{
	unsigned long r1, r3;

	r3 = FUNC0(vcpu, inst.M46.r3);

	if (FUNC2(vcpu, r3, &r1))
		return IA64_FAULT;

	FUNC1(vcpu, inst.M46.r1, r1, 0);
	return(IA64_NO_FAULT);
}