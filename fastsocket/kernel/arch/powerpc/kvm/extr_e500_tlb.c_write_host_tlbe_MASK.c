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
struct kvmppc_vcpu_e500 {struct tlbe** shadow_tlb; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_MAS0 ; 
 int /*<<< orphan*/  FUNC2 (struct tlbe*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static inline void FUNC8(struct kvmppc_vcpu_e500 *vcpu_e500,
		int tlbsel, int esel)
{
	struct tlbe *stlbe = &vcpu_e500->shadow_tlb[tlbsel][esel];

	FUNC3();
	if (tlbsel == 0) {
		FUNC2(stlbe);
	} else {
		unsigned register mas0;

		mas0 = FUNC5(SPRN_MAS0);

		FUNC6(SPRN_MAS0, FUNC1(1) | FUNC0(FUNC7(esel)));
		FUNC2(stlbe);

		FUNC6(SPRN_MAS0, mas0);
	}
	FUNC4();
}