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
struct mem_ctl_info {struct i5000_pvt* pvt_info; } ;
struct i5000_pvt {scalar_t__ maxch; int /*<<< orphan*/  branch_1; int /*<<< orphan*/  branch_0; int /*<<< orphan*/  fsb_error_regs; int /*<<< orphan*/  branchmap_werrors; } ;

/* Variables and functions */
 scalar_t__ CHANNELS_PER_BRANCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mem_ctl_info *mci)
{
	struct i5000_pvt *pvt;

	pvt = mci->pvt_info;

	FUNC0(pvt->branchmap_werrors);	/* FUNC 1 */
	FUNC0(pvt->fsb_error_regs);	/* FUNC 2 */
	FUNC0(pvt->branch_0);	/* DEV 21 */

	/* Only if more than 2 channels do we release the second branch */
	if (pvt->maxch >= CHANNELS_PER_BRANCH)
		FUNC0(pvt->branch_1);	/* DEV 22 */
}