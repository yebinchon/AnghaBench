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
struct TYPE_4__ {int /*<<< orphan*/  r1; } ;
struct TYPE_5__ {TYPE_1__ M33; } ;
typedef  TYPE_2__ INST64 ;

/* Variables and functions */
 unsigned long FUNC0 (int,int) ; 
 unsigned long FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

void FUNC3(struct kvm_vcpu *vcpu, INST64 inst)
{
	unsigned long val;

	val = FUNC1(vcpu);
	val = (val & FUNC0(0, 32)) | (val & FUNC0(35, 2));
	FUNC2(vcpu, inst.M33.r1, val, 0);
}