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
typedef  int u32 ;
struct mpc85xx_mc_pdata {scalar_t__ mc_vbase; } ;
struct mem_ctl_info {int nr_csrows; int /*<<< orphan*/  ctl_name; struct csrow_info* csrows; struct mpc85xx_mc_pdata* pvt_info; } ;
struct csrow_info {int first_page; int last_page; } ;

/* Variables and functions */
 int DDR_EDE_MBE ; 
 int DDR_EDE_SBE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ MPC85XX_MC_CAPTURE_ADDRESS ; 
 scalar_t__ MPC85XX_MC_CAPTURE_DATA_HI ; 
 scalar_t__ MPC85XX_MC_CAPTURE_DATA_LO ; 
 scalar_t__ MPC85XX_MC_CAPTURE_ECC ; 
 scalar_t__ MPC85XX_MC_ERR_DETECT ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct mem_ctl_info *mci)
{
	struct mpc85xx_mc_pdata *pdata = mci->pvt_info;
	struct csrow_info *csrow;
	u32 err_detect;
	u32 syndrome;
	u32 err_addr;
	u32 pfn;
	int row_index;

	err_detect = FUNC2(pdata->mc_vbase + MPC85XX_MC_ERR_DETECT);
	if (!err_detect)
		return;

	FUNC3(mci, KERN_ERR, "Err Detect Register: %#8.8x\n",
			  err_detect);

	/* no more processing if not ECC bit errors */
	if (!(err_detect & (DDR_EDE_SBE | DDR_EDE_MBE))) {
		FUNC4(pdata->mc_vbase + MPC85XX_MC_ERR_DETECT, err_detect);
		return;
	}

	syndrome = FUNC2(pdata->mc_vbase + MPC85XX_MC_CAPTURE_ECC);
	err_addr = FUNC2(pdata->mc_vbase + MPC85XX_MC_CAPTURE_ADDRESS);
	pfn = err_addr >> PAGE_SHIFT;

	for (row_index = 0; row_index < mci->nr_csrows; row_index++) {
		csrow = &mci->csrows[row_index];
		if ((pfn >= csrow->first_page) && (pfn <= csrow->last_page))
			break;
	}

	FUNC3(mci, KERN_ERR, "Capture Data High: %#8.8x\n",
			  FUNC2(pdata->mc_vbase +
				  MPC85XX_MC_CAPTURE_DATA_HI));
	FUNC3(mci, KERN_ERR, "Capture Data Low: %#8.8x\n",
			  FUNC2(pdata->mc_vbase +
				  MPC85XX_MC_CAPTURE_DATA_LO));
	FUNC3(mci, KERN_ERR, "syndrome: %#8.8x\n", syndrome);
	FUNC3(mci, KERN_ERR, "err addr: %#8.8x\n", err_addr);
	FUNC3(mci, KERN_ERR, "PFN: %#8.8x\n", pfn);

	/* we are out of range */
	if (row_index == mci->nr_csrows)
		FUNC3(mci, KERN_ERR, "PFN out of range!\n");

	if (err_detect & DDR_EDE_SBE)
		FUNC0(mci, pfn, err_addr & PAGE_MASK,
				  syndrome, row_index, 0, mci->ctl_name);

	if (err_detect & DDR_EDE_MBE)
		FUNC1(mci, pfn, err_addr & PAGE_MASK,
				  row_index, mci->ctl_name);

	FUNC4(pdata->mc_vbase + MPC85XX_MC_ERR_DETECT, err_detect);
}