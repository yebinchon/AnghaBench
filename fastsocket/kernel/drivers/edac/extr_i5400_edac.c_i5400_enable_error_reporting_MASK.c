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
typedef  int /*<<< orphan*/  u32 ;
struct mem_ctl_info {struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {int /*<<< orphan*/  branchmap_werrors; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMASK_FBD ; 
 int /*<<< orphan*/  ENABLE_EMASK_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mem_ctl_info *mci)
{
	struct i5400_pvt *pvt;
	u32 fbd_error_mask;

	pvt = mci->pvt_info;

	/* Read the FBD Error Mask Register */
	FUNC0(pvt->branchmap_werrors, EMASK_FBD,
			&fbd_error_mask);

	/* Enable with a '0' */
	fbd_error_mask &= ~(ENABLE_EMASK_ALL);

	FUNC1(pvt->branchmap_werrors, EMASK_FBD,
			fbd_error_mask);
}