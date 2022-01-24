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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 
 struct kvm_mmu_page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
{
	unsigned long *rmapp;
	struct kvm_mmu_page *sp;

	sp = FUNC4(FUNC0(spte));

	gfn = FUNC5(vcpu->kvm, gfn);
	rmapp = FUNC1(vcpu->kvm, gfn, sp->role.level);

	FUNC3(vcpu->kvm, rmapp, 0);
	FUNC2(vcpu->kvm);
}