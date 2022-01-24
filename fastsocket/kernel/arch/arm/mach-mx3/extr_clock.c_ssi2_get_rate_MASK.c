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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_CCM_PDR1_SSI2_PODF_MASK ; 
 int /*<<< orphan*/  MXC_CCM_PDR1_SSI2_PODF_OFFSET ; 
 int /*<<< orphan*/  MXC_CCM_PDR1_SSI2_PRE_PODF_MASK ; 
 int /*<<< orphan*/  MXC_CCM_PDR1_SSI2_PRE_PODF_OFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	unsigned long ssi2_pdf, ssi2_prepdf;

	ssi2_pdf = FUNC0(MXC_CCM_PDR1_SSI2_PODF_MASK,
			MXC_CCM_PDR1_SSI2_PODF_OFFSET);
	ssi2_prepdf = FUNC0(MXC_CCM_PDR1_SSI2_PRE_PODF_MASK,
			   MXC_CCM_PDR1_SSI2_PRE_PODF_OFFSET);
	return FUNC1(clk->parent) / (ssi2_prepdf + 1) / (ssi2_pdf + 1);
}