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
typedef  int u64 ;
struct thash_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  itrs; int /*<<< orphan*/  itr_regions; int /*<<< orphan*/  dtrs; int /*<<< orphan*/  dtr_regions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int D_TLB ; 
 int NDTRS ; 
 int NITRS ; 
 int FUNC0 (int) ; 
 int RR_RID_MASK ; 
 scalar_t__ FUNC1 (struct thash_data*,int,int,int) ; 
 int FUNC2 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct kvm_vcpu *vcpu, u64 va, u64 ps, int type)
{
	struct thash_data  *trp;
	int  i;
	u64 end, rid;

	rid = FUNC2(vcpu, va);
	rid = rid & RR_RID_MASK;
	end = va + FUNC0(ps);
	if (type == D_TLB) {
		if (FUNC3(vcpu->arch.dtr_regions, va)) {
			for (trp = (struct thash_data *)&vcpu->arch.dtrs, i = 0;
					i < NDTRS; i++, trp++) {
				if (FUNC1(trp, rid, va, end))
					return i;
			}
		}
	} else {
		if (FUNC3(vcpu->arch.itr_regions, va)) {
			for (trp = (struct thash_data *)&vcpu->arch.itrs, i = 0;
					i < NITRS; i++, trp++) {
				if (FUNC1(trp, rid, va, end))
					return i;
			}
		}
	}
	return -1;
}