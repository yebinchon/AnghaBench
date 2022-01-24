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
struct dw_lli {int /*<<< orphan*/  ctllo; int /*<<< orphan*/  ctlhi; int /*<<< orphan*/  llp; int /*<<< orphan*/  dar; int /*<<< orphan*/  sar; } ;
struct dw_dma_chan {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dw_dma_chan *dwc, struct dw_lli *lli)
{
	FUNC1(KERN_CRIT, FUNC0(&dwc->chan),
			"  desc: s0x%x d0x%x l0x%x c0x%x:%x\n",
			lli->sar, lli->dar, lli->llp,
			lli->ctlhi, lli->ctllo);
}