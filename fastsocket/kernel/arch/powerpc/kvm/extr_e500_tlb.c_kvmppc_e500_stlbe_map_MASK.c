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
struct kvmppc_vcpu_e500 {struct tlbe** guest_tlb; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct tlbe*) ; 
 int FUNC1 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int,struct tlbe*,int,int) ; 

__attribute__((used)) static int FUNC3(struct kvmppc_vcpu_e500 *vcpu_e500,
		int tlbsel, int esel)
{
	struct tlbe *gtlbe;

	gtlbe = &vcpu_e500->guest_tlb[tlbsel][esel];

	FUNC2(vcpu_e500, FUNC0(gtlbe),
			FUNC1(gtlbe) >> PAGE_SHIFT,
			gtlbe, tlbsel, esel);

	return esel;
}