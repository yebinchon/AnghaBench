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
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_lapic*,int) ; 
 int FUNC1 (struct kvm_lapic*,int) ; 

int FUNC2(struct kvm_vcpu *vcpu, struct kvm_lapic *source,
		int short_hand, int dest, int dest_mode)
{
	struct kvm_lapic *target = vcpu->arch.apic;
	return (dest_mode == 0) ?
		FUNC1(target, dest) :
		FUNC0(target, dest);
}