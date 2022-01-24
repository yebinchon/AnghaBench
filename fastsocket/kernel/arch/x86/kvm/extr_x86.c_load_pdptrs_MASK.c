#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int** rsvd_bits_mask; } ;
struct TYPE_4__ {int* pdptrs; int /*<<< orphan*/  regs_dirty; int /*<<< orphan*/  regs_avail; TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;
typedef  int /*<<< orphan*/  pdpte ;
typedef  unsigned long gfn_t ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  VCPU_EXREG_PDPTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long,int*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

int FUNC5(struct kvm_vcpu *vcpu, unsigned long cr3)
{
	gfn_t pdpt_gfn = cr3 >> PAGE_SHIFT;
	unsigned offset = ((cr3 & (PAGE_SIZE-1)) >> 5) << 2;
	int i;
	int ret;
	u64 pdpte[FUNC0(vcpu->arch.pdptrs)];

	ret = FUNC3(vcpu->kvm, pdpt_gfn, pdpte,
				  offset * sizeof(u64), sizeof(pdpte));
	if (ret < 0) {
		ret = 0;
		goto out;
	}
	for (i = 0; i < FUNC0(pdpte); ++i) {
		if (FUNC2(pdpte[i]) &&
		    (pdpte[i] & vcpu->arch.mmu.rsvd_bits_mask[0][2])) {
			ret = 0;
			goto out;
		}
	}
	ret = 1;

	FUNC4(vcpu->arch.pdptrs, pdpte, sizeof(vcpu->arch.pdptrs));
	FUNC1(VCPU_EXREG_PDPTR,
		  (unsigned long *)&vcpu->arch.regs_avail);
	FUNC1(VCPU_EXREG_PDPTR,
		  (unsigned long *)&vcpu->arch.regs_dirty);
out:

	return ret;
}