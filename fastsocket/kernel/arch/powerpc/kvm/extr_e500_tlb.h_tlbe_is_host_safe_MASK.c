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
struct tlbe {int dummy; } ;
struct TYPE_2__ {int msr; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int MSR_IS ; 
 int PAGE_SHIFT ; 
 int FUNC0 (struct tlbe const*) ; 
 int FUNC1 (struct tlbe const*) ; 
 int /*<<< orphan*/  FUNC2 (struct tlbe const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC4(const struct kvm_vcpu *vcpu,
			const struct tlbe *tlbe)
{
	gpa_t gpa;

	if (!FUNC2(tlbe))
		return 0;

	/* Does it match current guest AS? */
	/* XXX what about IS != DS? */
	if (FUNC1(tlbe) != !!(vcpu->arch.msr & MSR_IS))
		return 0;

	gpa = FUNC0(tlbe);
	if (!FUNC3(vcpu->kvm, gpa >> PAGE_SHIFT))
		/* Mapping is not for RAM. */
		return 0;

	return 1;
}