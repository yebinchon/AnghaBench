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
 int /*<<< orphan*/  MXC_CRMAP_ACSR ; 
 int MXC_CRMAP_ACSR_ACS ; 
 int /*<<< orphan*/  MXC_CRMAP_ASCSR ; 
 int MXC_CRMAP_ASCSR_USBSEL_MASK ; 
 int MXC_CRMAP_ASCSR_USBSEL_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk ap_ref_clk ; 
 struct clk* FUNC1 (int) ; 

__attribute__((used)) static struct clk *FUNC2(struct clk *clk)
{
	u32 acsr, ascsr;

	acsr = FUNC0(MXC_CRMAP_ACSR);
	ascsr = FUNC0(MXC_CRMAP_ASCSR);

	if (acsr & MXC_CRMAP_ACSR_ACS) {
		u8 sel;
		sel = (ascsr & MXC_CRMAP_ASCSR_USBSEL_MASK) >>
			MXC_CRMAP_ASCSR_USBSEL_OFFSET;
		return FUNC1(sel);
	}
	return &ap_ref_clk;
}