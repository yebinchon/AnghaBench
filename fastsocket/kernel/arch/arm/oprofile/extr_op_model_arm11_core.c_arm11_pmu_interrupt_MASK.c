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
typedef  unsigned int u32 ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int CCNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int PMCR_IEN_PMN0 ; 
 unsigned int PMCR_OFL_PMN0 ; 
 unsigned int PMN0 ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct pt_regs* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *arg)
{
	struct pt_regs *regs = FUNC4();
	unsigned int cnt;
	u32 pmnc;

	pmnc = FUNC1();

	for (cnt = PMN0; cnt <= CCNT; cnt++) {
		if ((pmnc & (PMCR_OFL_PMN0 << cnt)) && (pmnc & (PMCR_IEN_PMN0 << cnt))) {
			FUNC2(cnt);
			FUNC5(regs, FUNC0(FUNC6(), cnt));
		}
	}
	/* Clear counter flag(s) */
	FUNC3(pmnc);
	return IRQ_HANDLED;
}