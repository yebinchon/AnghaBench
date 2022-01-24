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
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef  int gpa_t ;
struct TYPE_2__ {int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu, gpa_t addr)
{
	FUNC1(&vcpu->kvm->mmu_lock);
	FUNC0(vcpu->kvm, addr >> PAGE_SHIFT);
	FUNC2(&vcpu->kvm->mmu_lock);
	return 1;
}