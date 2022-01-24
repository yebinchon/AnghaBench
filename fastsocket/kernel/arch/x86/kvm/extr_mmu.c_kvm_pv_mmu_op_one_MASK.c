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
struct kvm_vcpu {int dummy; } ;
struct kvm_pv_mmu_op_buffer {int dummy; } ;
struct kvm_mmu_op_write_pte {int /*<<< orphan*/  pte_val; int /*<<< orphan*/  pte_phys; } ;
struct kvm_mmu_op_release_pt {int /*<<< orphan*/  pt_phys; } ;
struct kvm_mmu_op_header {int op; } ;
struct kvm_mmu_op_flush_tlb {int dummy; } ;

/* Variables and functions */
#define  KVM_MMU_OP_FLUSH_TLB 130 
#define  KVM_MMU_OP_RELEASE_PT 129 
#define  KVM_MMU_OP_WRITE_PTE 128 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_mmu_op_header* FUNC3 (struct kvm_pv_mmu_op_buffer*,int) ; 
 void* FUNC4 (struct kvm_pv_mmu_op_buffer*,int) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu,
			     struct kvm_pv_mmu_op_buffer *buffer)
{
	struct kvm_mmu_op_header *header;

	header = FUNC3(buffer, sizeof *header);
	if (!header)
		return 0;
	switch (header->op) {
	case KVM_MMU_OP_WRITE_PTE: {
		struct kvm_mmu_op_write_pte *wpte;

		wpte = FUNC4(buffer, sizeof *wpte);
		if (!wpte)
			return 0;
		return FUNC2(vcpu, wpte->pte_phys,
					wpte->pte_val);
	}
	case KVM_MMU_OP_FLUSH_TLB: {
		struct kvm_mmu_op_flush_tlb *ftlb;

		ftlb = FUNC4(buffer, sizeof *ftlb);
		if (!ftlb)
			return 0;
		return FUNC0(vcpu);
	}
	case KVM_MMU_OP_RELEASE_PT: {
		struct kvm_mmu_op_release_pt *rpt;

		rpt = FUNC4(buffer, sizeof *rpt);
		if (!rpt)
			return 0;
		return FUNC1(vcpu, rpt->pt_phys);
	}
	default: return 0;
	}
}