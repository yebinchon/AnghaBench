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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,void const*,unsigned long) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,void const*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, u64 guestdest, const void *from,
		       unsigned long n, int prefix)
{
	if (prefix)
		return FUNC0(vcpu, guestdest, from, n);
	else
		return FUNC1(vcpu, guestdest, from, n);
}