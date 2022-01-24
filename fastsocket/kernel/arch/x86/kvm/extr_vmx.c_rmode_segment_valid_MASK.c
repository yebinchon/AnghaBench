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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int base; int selector; int limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct kvm_segment*,int) ; 
 int FUNC1 (struct kvm_segment*) ; 

__attribute__((used)) static bool FUNC2(struct kvm_vcpu *vcpu, int seg)
{
	struct kvm_segment var;
	u32 ar;

	FUNC0(vcpu, &var, seg);
	ar = FUNC1(&var);

	if (var.base != (var.selector << 4))
		return false;
	if (var.limit != 0xffff)
		return false;
	if (ar != 0xf3)
		return false;

	return true;
}