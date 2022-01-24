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
typedef  int u8 ;
typedef  int u32 ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARMDIV ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MXC_CRMAP_ACDR ; 
 int /*<<< orphan*/  MXC_CRMAP_ACSR ; 
 int MXC_CRMAP_ACSR_ACS ; 
 int /*<<< orphan*/  MXC_CRMAP_ASCSR ; 
 int MXC_CRMAP_ASCSR_APSEL_MASK ; 
 int MXC_CRMAP_ASCSR_APSEL_OFFSET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ap_ref_clk ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk *clk)
{
	u32 acsr, ascsr;

	acsr = FUNC1(MXC_CRMAP_ACSR);
	ascsr = FUNC1(MXC_CRMAP_ASCSR);

	if (acsr & MXC_CRMAP_ACSR_ACS) {
		u8 sel;
		sel = (ascsr & MXC_CRMAP_ASCSR_APSEL_MASK) >>
			MXC_CRMAP_ASCSR_APSEL_OFFSET;
		return FUNC2(FUNC3(sel)) /
			FUNC0(MXC_CRMAP_ACDR, ARMDIV);
	}
	return FUNC2(&ap_ref_clk);
}