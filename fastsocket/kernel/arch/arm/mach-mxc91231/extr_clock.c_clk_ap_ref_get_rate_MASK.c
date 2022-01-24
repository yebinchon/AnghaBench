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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_CRMAP_ACSR ; 
 int MXC_CRMAP_ACSR_ACS ; 
 int MXC_CRMAP_ACSR_ADS_OFFSET ; 
 int /*<<< orphan*/  MXC_CRMAP_ASCSR ; 
 int MXC_CRMAP_ASCSR_APISEL ; 
 int MXC_CRMAP_ASCSR_AP_PATDIV2_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	u32 ascsr, acsr;
	u8 ap_pat_ref_div_2, ap_isel, acs, ads;

	ascsr = FUNC0(MXC_CRMAP_ASCSR);
	acsr = FUNC0(MXC_CRMAP_ACSR);

	/* 0 for ckih, 1 for ckih*2 */
	ap_isel = ascsr & MXC_CRMAP_ASCSR_APISEL;
	/* reg divider */
	ap_pat_ref_div_2 = (ascsr >> MXC_CRMAP_ASCSR_AP_PATDIV2_OFFSET) & 0x1;
	/* undocumented, 1 for disabling divider */
	ads = (acsr >> MXC_CRMAP_ACSR_ADS_OFFSET) & 0x1;
	/* 0 for pat_ref, 1 for divider out */
	acs = acsr & MXC_CRMAP_ACSR_ACS;

	if (acs & !ads)
		/* use divided clock */
		return FUNC1(clk->parent) / (ap_pat_ref_div_2 ? 2 : 1);

	return FUNC1(clk->parent) * (ap_isel ? 2 : 1);
}