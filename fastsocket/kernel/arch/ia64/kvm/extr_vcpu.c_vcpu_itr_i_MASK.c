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
typedef  size_t u64 ;
struct thash_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * itrs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 size_t PAGE_FLAGS_RV_MASK ; 
 size_t RR_RID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  itr_regions ; 
 size_t FUNC3 (struct kvm_vcpu*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct thash_data*,size_t,size_t,size_t,size_t) ; 

void FUNC6(struct kvm_vcpu *vcpu, u64 slot, u64 pte, u64 itir, u64 ifa)
{
	u64 ps, va, rid;
	struct thash_data *p_itr;

	ps = FUNC2(itir);
	va = FUNC0(ifa, ps);
	pte &= ~PAGE_FLAGS_RV_MASK;
	rid = FUNC3(vcpu, ifa);
	rid = rid & RR_RID_MASK;
	p_itr = (struct thash_data *)&vcpu->arch.itrs[slot];
	FUNC5(p_itr, pte, itir, va, rid);
	FUNC4(FUNC1(vcpu, itr_regions), va);
}