#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct thash_data {int ppn; int ps; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int* i64; } ;
typedef  TYPE_1__ IA64_BUNDLE ;

/* Variables and functions */
 int ARCH_PAGE_SHIFT ; 
 int IA64_FAULT ; 
 int IA64_NO_FAULT ; 
 int IA64_PSR_IT ; 
 int /*<<< orphan*/  I_TLB ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 struct thash_data* FUNC5 (int) ; 
 int /*<<< orphan*/  vpsr ; 
 struct thash_data* FUNC6 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 

int FUNC7(struct kvm_vcpu *vcpu, u64 gip, IA64_BUNDLE *pbundle)
{
	u64     gpip = 0;   /* guest physical IP*/
	u64     *vpa;
	struct thash_data    *tlb;
	u64     maddr;

	if (!(FUNC1(vcpu, vpsr) & IA64_PSR_IT)) {
		/* I-side physical mode */
		gpip = gip;
	} else {
		tlb = FUNC6(vcpu, gip, I_TLB);
		if (tlb)
			gpip = (tlb->ppn >> (tlb->ps - 12) << tlb->ps) |
				(gip & (FUNC0(tlb->ps) - 1));
	}
	if (gpip) {
		maddr = FUNC4(gpip);
	} else {
		tlb = FUNC5(gip);
		if (tlb == NULL) {
			FUNC3(gip, ARCH_PAGE_SHIFT << 2);
			return IA64_FAULT;
		}
		maddr = (tlb->ppn >> (tlb->ps - 12) << tlb->ps)
					| (gip & (FUNC0(tlb->ps) - 1));
	}
	vpa = (u64 *)FUNC2(maddr);

	pbundle->i64[0] = *vpa++;
	pbundle->i64[1] = *vpa;

	return IA64_NO_FAULT;
}