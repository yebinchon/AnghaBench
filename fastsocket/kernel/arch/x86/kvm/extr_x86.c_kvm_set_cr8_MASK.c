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
struct TYPE_2__ {unsigned long cr8; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 unsigned long CR8_RESERVED_BITS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,unsigned long) ; 

int FUNC2(struct kvm_vcpu *vcpu, unsigned long cr8)
{
	if (cr8 & CR8_RESERVED_BITS)
		return 1;
	if (FUNC0(vcpu->kvm))
		FUNC1(vcpu, cr8);
	else
		vcpu->arch.cr8 = cr8;
	return 0;
}