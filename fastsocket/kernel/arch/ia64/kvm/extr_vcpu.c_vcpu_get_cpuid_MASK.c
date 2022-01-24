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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 

unsigned long FUNC1(struct kvm_vcpu *vcpu, unsigned long reg)
{
	/* FIXME: This could get called as a result of a rsvd-reg fault */
	if (reg > (FUNC0(3) & 0xff))
		return 0;
	else
		return FUNC0(reg);
}