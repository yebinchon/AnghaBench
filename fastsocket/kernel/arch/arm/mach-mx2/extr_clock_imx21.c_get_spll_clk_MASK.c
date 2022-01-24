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
typedef  unsigned long uint32_t ;
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_SPCTL0 ; 
 unsigned long CCM_SPCTL0_MFD_MASK ; 
 unsigned long CCM_SPCTL0_MFD_OFFSET ; 
 unsigned long CCM_SPCTL0_MFI_MASK ; 
 unsigned long CCM_SPCTL0_MFI_OFFSET ; 
 unsigned long CCM_SPCTL0_MFN_MASK ; 
 unsigned long CCM_SPCTL0_MFN_OFFSET ; 
 unsigned long CCM_SPCTL0_PD_MASK ; 
 unsigned long CCM_SPCTL0_PD_OFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk *clk)
{
	uint32_t reg;
	unsigned long ref_clk;
	unsigned long mfi = 0, mfn = 0, mfd = 0, pdf = 0;
	unsigned long long temp;

	ref_clk = FUNC1(clk->parent);

	reg = FUNC0(CCM_SPCTL0);
	pdf = (reg & CCM_SPCTL0_PD_MASK) >> CCM_SPCTL0_PD_OFFSET;
	mfd = (reg & CCM_SPCTL0_MFD_MASK) >> CCM_SPCTL0_MFD_OFFSET;
	mfi = (reg & CCM_SPCTL0_MFI_MASK) >> CCM_SPCTL0_MFI_OFFSET;
	mfn = (reg & CCM_SPCTL0_MFN_MASK) >> CCM_SPCTL0_MFN_OFFSET;

	mfi = (mfi <= 5) ? 5 : mfi;
	temp = 2LL * ref_clk * mfn;
	FUNC2(temp, mfd + 1);
	temp = 2LL * ref_clk * mfi + temp;
	FUNC2(temp, pdf + 1);

	return (unsigned long)temp;
}