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
struct kvmppc_vcpu_e500 {struct page*** shadow_pages; struct tlbe** shadow_tlb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct tlbe*) ; 

__attribute__((used)) static void FUNC4(struct kvmppc_vcpu_e500 *vcpu_e500,
		int tlbsel, int esel)
{
	struct tlbe *stlbe = &vcpu_e500->shadow_tlb[tlbsel][esel];
	struct page *page = vcpu_e500->shadow_pages[tlbsel][esel];

	if (page) {
		vcpu_e500->shadow_pages[tlbsel][esel] = NULL;

		if (FUNC0(stlbe)) {
			if (FUNC3(stlbe))
				FUNC2(page);
			else
				FUNC1(page);
		}
	}
}