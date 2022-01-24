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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int gpa_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int UNMAPPED_GVA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ tdp_enabled ; 

__attribute__((used)) static bool FUNC4(struct kvm_vcpu *vcpu, gva_t gva)
{
	gpa_t gpa;

	if (tdp_enabled)
		return false;
	/*
	 * if emulation was due to access to shadowed page table
	 * and it failed try to unshadow page and re-entetr the
	 * guest to let CPU execute the instruction.
	 */
	if (FUNC3(vcpu, gva))
		return true;

	gpa = FUNC2(vcpu, gva, NULL);

	if (gpa == UNMAPPED_GVA)
		return true; /* let cpu generate fault */

	if (!FUNC1(FUNC0(vcpu->kvm, gpa >> PAGE_SHIFT)))
		return true;

	return false;
}