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
 int /*<<< orphan*/  MXC_CCM_PDR2_MST1_PDF_MASK ; 
 int /*<<< orphan*/  MXC_CCM_PDR2_MST1_PDF_OFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	unsigned long msti_pdf;

	msti_pdf = FUNC0(MXC_CCM_PDR2_MST1_PDF_MASK,
			MXC_CCM_PDR2_MST1_PDF_OFFSET);
	return FUNC1(clk->parent) / (msti_pdf + 1);
}