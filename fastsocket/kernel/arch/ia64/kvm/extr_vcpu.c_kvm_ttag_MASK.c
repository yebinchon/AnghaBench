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
 unsigned long FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct kvm_vcpu*,unsigned long) ; 

void FUNC3(struct kvm_vcpu *vcpu, INST64 inst)
{
	unsigned long tag, vadr;

	vadr = FUNC0(vcpu, inst.M46.r3);
	tag = FUNC2(vcpu, vadr);
	FUNC1(vcpu, inst.M46.r1, tag, 0);
}