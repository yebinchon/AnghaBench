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
typedef  unsigned long u32 ;
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_CCM_PDR0 ; 
 unsigned long MXC_CCM_PDR0_CSI_PODF_MASK ; 
 unsigned long MXC_CCM_PDR0_CSI_PODF_OFFSET ; 
 unsigned long MXC_CCM_PDR0_CSI_PRDF_MASK ; 
 unsigned long MXC_CCM_PDR0_CSI_PRDF_OFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	u32 reg, pre, post;

	reg = FUNC0(MXC_CCM_PDR0);
	pre = (reg & MXC_CCM_PDR0_CSI_PRDF_MASK) >>
	    MXC_CCM_PDR0_CSI_PRDF_OFFSET;
	pre++;
	post = (reg & MXC_CCM_PDR0_CSI_PODF_MASK) >>
	    MXC_CCM_PDR0_CSI_PODF_OFFSET;
	post++;
	return FUNC1(clk->parent) / (pre * post);
}