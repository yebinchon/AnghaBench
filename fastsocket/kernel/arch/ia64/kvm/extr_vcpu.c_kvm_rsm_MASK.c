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
struct TYPE_4__ {int i; int i2; int imm; } ;
struct TYPE_5__ {TYPE_1__ M44; } ;
typedef  TYPE_2__ INST64 ;

/* Variables and functions */
 unsigned long FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,unsigned long) ; 

void FUNC2(struct kvm_vcpu *vcpu, INST64 inst)
{
	unsigned long vpsr;
	unsigned long imm24 = (inst.M44.i<<23) | (inst.M44.i2<<21)
					| inst.M44.imm;

	vpsr = FUNC0(vcpu);
	vpsr &= (~imm24);
	FUNC1(vcpu, vpsr);
}