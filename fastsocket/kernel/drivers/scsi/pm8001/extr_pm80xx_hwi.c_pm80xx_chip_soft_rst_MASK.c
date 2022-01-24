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
struct pm8001_hba_info {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_1 ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int SCRATCH_PAD1_BOOTSTATE_CRIT_ERROR ; 
 int SCRATCH_PAD1_BOOTSTATE_HDA_BOOTSTRAP ; 
 int SCRATCH_PAD1_BOOTSTATE_HDA_SEEPROM ; 
 int SCRATCH_PAD1_BOOTSTATE_HDA_SOFTRESET ; 
 int SCRATCH_PAD1_BOOTSTATE_MASK ; 
 int /*<<< orphan*/  SPC_REG_SOFT_RESET ; 
 int /*<<< orphan*/  SPCv_NORMAL_RESET_VALUE ; 
 int SPCv_SOFT_RESET_NORMAL_RESET_OCCURED ; 
 int SPCv_SOFT_RESET_READ_MASK ; 
 int FUNC3 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct pm8001_hba_info*) ; 
 int FUNC6 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(struct pm8001_hba_info *pm8001_ha)
{
	u32 regval;
	u32 bootloader_state;

	/* Check if MPI is in ready state to reset */
	if (FUNC5(pm8001_ha) != 0) {
		FUNC0(pm8001_ha,
			FUNC8("MPI state is not ready\n"));
		return -1;
	}

	/* checked for reset register normal state; 0x0 */
	regval = FUNC6(pm8001_ha, 0, SPC_REG_SOFT_RESET);
	FUNC1(pm8001_ha,
		FUNC8("reset register before write : 0x%x\n", regval));

	FUNC7(pm8001_ha, 0, SPC_REG_SOFT_RESET, SPCv_NORMAL_RESET_VALUE);
	FUNC4(500);

	regval = FUNC6(pm8001_ha, 0, SPC_REG_SOFT_RESET);
	FUNC1(pm8001_ha,
	FUNC8("reset register after write 0x%x\n", regval));

	if ((regval & SPCv_SOFT_RESET_READ_MASK) ==
			SPCv_SOFT_RESET_NORMAL_RESET_OCCURED) {
		FUNC2(pm8001_ha,
			FUNC8(" soft reset successful [regval: 0x%x]\n",
					regval));
	} else {
		FUNC2(pm8001_ha,
			FUNC8(" soft reset failed [regval: 0x%x]\n",
					regval));

		/* check bootloader is successfully executed or in HDA mode */
		bootloader_state =
			FUNC6(pm8001_ha, 0, MSGU_SCRATCH_PAD_1) &
			SCRATCH_PAD1_BOOTSTATE_MASK;

		if (bootloader_state == SCRATCH_PAD1_BOOTSTATE_HDA_SEEPROM) {
			FUNC2(pm8001_ha, FUNC8(
				"Bootloader state - HDA mode SEEPROM\n"));
		} else if (bootloader_state ==
				SCRATCH_PAD1_BOOTSTATE_HDA_BOOTSTRAP) {
			FUNC2(pm8001_ha, FUNC8(
				"Bootloader state - HDA mode Bootstrap Pin\n"));
		} else if (bootloader_state ==
				SCRATCH_PAD1_BOOTSTATE_HDA_SOFTRESET) {
			FUNC2(pm8001_ha, FUNC8(
				"Bootloader state - HDA mode soft reset\n"));
		} else if (bootloader_state ==
					SCRATCH_PAD1_BOOTSTATE_CRIT_ERROR) {
			FUNC2(pm8001_ha, FUNC8(
				"Bootloader state-HDA mode critical error\n"));
		}
		return -EBUSY;
	}

	/* check the firmware status after reset */
	if (-1 == FUNC3(pm8001_ha)) {
		FUNC0(pm8001_ha,
			FUNC8("Firmware is not ready!\n"));
		return -EBUSY;
	}
	FUNC1(pm8001_ha,
		FUNC8("SPCv soft reset Complete\n"));
	return 0;
}