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
struct tlbe {int dummy; } ;
struct page {int dummy; } ;
struct kvmppc_vcpu_e500 {int* guest_tlb_size; int* shadow_tlb_size; struct page*** guest_tlb; struct page*** shadow_tlb; struct page*** shadow_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KVM_E500_TLB0_SIZE ; 
 int KVM_E500_TLB1_SIZE ; 
 int /*<<< orphan*/  SPRN_TLB1CFG ; 
 int /*<<< orphan*/  FUNC0 (struct page**) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int tlb1_entry_num ; 

int FUNC3(struct kvmppc_vcpu_e500 *vcpu_e500)
{
	tlb1_entry_num = FUNC2(SPRN_TLB1CFG) & 0xFFF;

	vcpu_e500->guest_tlb_size[0] = KVM_E500_TLB0_SIZE;
	vcpu_e500->guest_tlb[0] =
		FUNC1(sizeof(struct tlbe) * KVM_E500_TLB0_SIZE, GFP_KERNEL);
	if (vcpu_e500->guest_tlb[0] == NULL)
		goto err_out;

	vcpu_e500->shadow_tlb_size[0] = KVM_E500_TLB0_SIZE;
	vcpu_e500->shadow_tlb[0] =
		FUNC1(sizeof(struct tlbe) * KVM_E500_TLB0_SIZE, GFP_KERNEL);
	if (vcpu_e500->shadow_tlb[0] == NULL)
		goto err_out_guest0;

	vcpu_e500->guest_tlb_size[1] = KVM_E500_TLB1_SIZE;
	vcpu_e500->guest_tlb[1] =
		FUNC1(sizeof(struct tlbe) * KVM_E500_TLB1_SIZE, GFP_KERNEL);
	if (vcpu_e500->guest_tlb[1] == NULL)
		goto err_out_shadow0;

	vcpu_e500->shadow_tlb_size[1] = tlb1_entry_num;
	vcpu_e500->shadow_tlb[1] =
		FUNC1(sizeof(struct tlbe) * tlb1_entry_num, GFP_KERNEL);
	if (vcpu_e500->shadow_tlb[1] == NULL)
		goto err_out_guest1;

	vcpu_e500->shadow_pages[0] = (struct page **)
		FUNC1(sizeof(struct page *) * KVM_E500_TLB0_SIZE, GFP_KERNEL);
	if (vcpu_e500->shadow_pages[0] == NULL)
		goto err_out_shadow1;

	vcpu_e500->shadow_pages[1] = (struct page **)
		FUNC1(sizeof(struct page *) * tlb1_entry_num, GFP_KERNEL);
	if (vcpu_e500->shadow_pages[1] == NULL)
		goto err_out_page0;

	return 0;

err_out_page0:
	FUNC0(vcpu_e500->shadow_pages[0]);
err_out_shadow1:
	FUNC0(vcpu_e500->shadow_tlb[1]);
err_out_guest1:
	FUNC0(vcpu_e500->guest_tlb[1]);
err_out_shadow0:
	FUNC0(vcpu_e500->shadow_tlb[0]);
err_out_guest0:
	FUNC0(vcpu_e500->guest_tlb[0]);
err_out:
	return -1;
}