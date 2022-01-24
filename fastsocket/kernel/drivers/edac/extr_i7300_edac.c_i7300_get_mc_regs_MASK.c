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
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int tolm; int mc_settings; int mc_settings_a; int* mir; int /*<<< orphan*/  pci_dev_16_1_fsb_addr_map; scalar_t__ ambase; int /*<<< orphan*/  pci_dev_16_0_fsb_ctlr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMBASE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int MAX_MIR ; 
 int /*<<< orphan*/  MC_SETTINGS ; 
 int /*<<< orphan*/  MC_SETTINGS_A ; 
 int /*<<< orphan*/  MIR0 ; 
 int /*<<< orphan*/  MIR1 ; 
 int /*<<< orphan*/  MIR2 ; 
 int /*<<< orphan*/  TOLM ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int,int*) ; 
 int FUNC7 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct i7300_pvt*) ; 

__attribute__((used)) static int FUNC11(struct mem_ctl_info *mci)
{
	struct i7300_pvt *pvt;
	u32 actual_tolm;
	int i, rc;

	pvt = mci->pvt_info;

	FUNC8(pvt->pci_dev_16_0_fsb_ctlr, AMBASE,
			(u32 *) &pvt->ambase);

	FUNC5("AMBASE= 0x%lx\n", (long unsigned int)pvt->ambase);

	/* Get the Branch Map regs */
	FUNC9(pvt->pci_dev_16_1_fsb_addr_map, TOLM, &pvt->tolm);
	pvt->tolm >>= 12;
	FUNC5("TOLM (number of 256M regions) =%u (0x%x)\n", pvt->tolm,
		pvt->tolm);

	actual_tolm = (u32) ((1000l * pvt->tolm) >> (30 - 28));
	FUNC5("Actual TOLM byte addr=%u.%03u GB (0x%x)\n",
		actual_tolm/1000, actual_tolm % 1000, pvt->tolm << 28);

	/* Get memory controller settings */
	FUNC8(pvt->pci_dev_16_1_fsb_addr_map, MC_SETTINGS,
			     &pvt->mc_settings);
	FUNC8(pvt->pci_dev_16_1_fsb_addr_map, MC_SETTINGS_A,
			     &pvt->mc_settings_a);

	if (FUNC3(pvt->mc_settings_a))
		FUNC4("Memory controller operating on single mode\n");
	else
		FUNC4("Memory controller operating on %s mode\n",
		FUNC1(pvt->mc_settings) ? "mirrored" : "non-mirrored");

	FUNC4("Error detection is %s\n",
		FUNC0(pvt->mc_settings) ? "enabled" : "disabled");
	FUNC4("Retry is %s\n",
		FUNC2(pvt->mc_settings) ? "enabled" : "disabled");

	/* Get Memory Interleave Range registers */
	FUNC9(pvt->pci_dev_16_1_fsb_addr_map, MIR0,
			     &pvt->mir[0]);
	FUNC9(pvt->pci_dev_16_1_fsb_addr_map, MIR1,
			     &pvt->mir[1]);
	FUNC9(pvt->pci_dev_16_1_fsb_addr_map, MIR2,
			     &pvt->mir[2]);

	/* Decode the MIR regs */
	for (i = 0; i < MAX_MIR; i++)
		FUNC6(i, pvt->mir);

	rc = FUNC7(mci);
	if (rc < 0)
		return rc;

	/* Go and determine the size of each DIMM and place in an
	 * orderly matrix */
	FUNC10(pvt);

	return 0;
}