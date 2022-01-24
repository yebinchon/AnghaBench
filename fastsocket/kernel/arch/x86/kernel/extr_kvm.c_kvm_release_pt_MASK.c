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
struct TYPE_2__ {int /*<<< orphan*/  op; } ;
struct kvm_mmu_op_release_pt {int pt_phys; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_MMU_OP_RELEASE_PT ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_mmu_op_release_pt*,int) ; 

__attribute__((used)) static void FUNC1(unsigned long pfn)
{
	struct kvm_mmu_op_release_pt rpt = {
		.header.op = KVM_MMU_OP_RELEASE_PT,
		.pt_phys = (u64)pfn << PAGE_SHIFT,
	};

	FUNC0(&rpt, sizeof rpt);
}