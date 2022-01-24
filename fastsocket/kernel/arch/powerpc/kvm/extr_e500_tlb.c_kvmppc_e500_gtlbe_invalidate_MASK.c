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
struct tlbe {scalar_t__ mas1; } ;
struct kvmppc_vcpu_e500 {struct tlbe** guest_tlb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC2 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC3 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_vcpu_e500*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kvmppc_vcpu_e500 *vcpu_e500,
		int tlbsel, int esel)
{
	struct tlbe *gtlbe = &vcpu_e500->guest_tlb[tlbsel][esel];

	if (FUNC6(FUNC2(gtlbe)))
		return -1;

	if (tlbsel == 1) {
		FUNC5(vcpu_e500, FUNC0(gtlbe),
				FUNC1(gtlbe),
				FUNC3(gtlbe));
	} else {
		FUNC4(vcpu_e500, tlbsel, esel);
	}

	gtlbe->mas1 = 0;

	return 0;
}