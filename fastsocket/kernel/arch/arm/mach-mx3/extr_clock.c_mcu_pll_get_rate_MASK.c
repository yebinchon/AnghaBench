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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_CCM_CCMR ; 
 unsigned long MXC_CCM_CCMR_MDS ; 
 unsigned long MXC_CCM_CCMR_MPE ; 
 int /*<<< orphan*/  MXC_CCM_MPCTL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ckih_clk ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static unsigned long FUNC4(struct clk *clk)
{
	unsigned long reg, ccmr;

	ccmr = FUNC0(MXC_CCM_CCMR);

	if (!(ccmr & MXC_CCM_CCMR_MPE) || (ccmr & MXC_CCM_CCMR_MDS))
		return FUNC1(&ckih_clk);

	reg = FUNC0(MXC_CCM_MPCTL);

	return FUNC2(reg, FUNC3());
}