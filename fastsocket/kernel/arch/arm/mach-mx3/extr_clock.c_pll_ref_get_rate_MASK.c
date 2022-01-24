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

/* Variables and functions */
 int CKIL_CLK_FREQ ; 
 int /*<<< orphan*/  MXC_CCM_CCMR ; 
 unsigned long MXC_CCM_CCMR_PRCS_MASK ; 
 unsigned long MXC_CCM_CCMR_PRCS_OFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ckih_clk ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	unsigned long ccmr;
	unsigned int prcs;

	ccmr = FUNC0(MXC_CCM_CCMR);
	prcs = (ccmr & MXC_CCM_CCMR_PRCS_MASK) >> MXC_CCM_CCMR_PRCS_OFFSET;
	if (prcs == 0x1)
		return CKIL_CLK_FREQ * 1024;
	else
		return FUNC1(&ckih_clk);
}