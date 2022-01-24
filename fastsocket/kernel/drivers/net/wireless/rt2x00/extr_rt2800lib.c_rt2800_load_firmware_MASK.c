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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOWAKEUP_CFG ; 
 int /*<<< orphan*/  AUX_CTRL ; 
 int /*<<< orphan*/  AUX_CTRL_FORCE_PCIE_CLK ; 
 int /*<<< orphan*/  AUX_CTRL_WAKE_PCIE_EN ; 
 int EBUSY ; 
 int /*<<< orphan*/  H2M_BBP_AGENT ; 
 int /*<<< orphan*/  H2M_INT_SRC ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR ; 
 int /*<<< orphan*/  MCU_BOOT_SIGNAL ; 
 int /*<<< orphan*/  PBF_SYS_CTRL ; 
 int /*<<< orphan*/  PBF_SYS_CTRL_READY ; 
 int /*<<< orphan*/  PWR_PIN_CFG ; 
 unsigned int REGISTER_BUSY_COUNT ; 
 int /*<<< orphan*/  RT3290 ; 
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  RT5390 ; 
 int /*<<< orphan*/  RT5392 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/  const*,size_t const) ; 
 int FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,char*) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC11 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC12 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC14(struct rt2x00_dev *rt2x00dev,
			 const u8 *data, const size_t len)
{
	unsigned int i;
	u32 reg;
	int retval;

	if (FUNC12(rt2x00dev, RT3290)) {
		retval = FUNC3(rt2x00dev);
		if (retval)
			return -EBUSY;
	}

	/*
	 * If driver doesn't wake up firmware here,
	 * rt2800_load_firmware will hang forever when interface is up again.
	 */
	FUNC6(rt2x00dev, AUTOWAKEUP_CFG, 0x00000000);

	/*
	 * Wait for stable hardware.
	 */
	if (FUNC7(rt2x00dev))
		return -EBUSY;

	if (FUNC10(rt2x00dev)) {
		if (FUNC12(rt2x00dev, RT3290) ||
		    FUNC12(rt2x00dev, RT3572) ||
		    FUNC12(rt2x00dev, RT5390) ||
		    FUNC12(rt2x00dev, RT5392)) {
			FUNC5(rt2x00dev, AUX_CTRL, &reg);
			FUNC13(&reg, AUX_CTRL_FORCE_PCIE_CLK, 1);
			FUNC13(&reg, AUX_CTRL_WAKE_PCIE_EN, 1);
			FUNC6(rt2x00dev, AUX_CTRL, reg);
		}
		FUNC6(rt2x00dev, PWR_PIN_CFG, 0x00000002);
	}

	FUNC1(rt2x00dev);

	/*
	 * Write firmware to the device.
	 */
	FUNC2(rt2x00dev, data, len);

	/*
	 * Wait for device to stabilize.
	 */
	for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
		FUNC5(rt2x00dev, PBF_SYS_CTRL, &reg);
		if (FUNC9(reg, PBF_SYS_CTRL_READY))
			break;
		FUNC0(1);
	}

	if (i == REGISTER_BUSY_COUNT) {
		FUNC8(rt2x00dev, "PBF system register not ready\n");
		return -EBUSY;
	}

	/*
	 * Disable DMA, will be reenabled later when enabling
	 * the radio.
	 */
	FUNC1(rt2x00dev);

	/*
	 * Initialize firmware.
	 */
	FUNC6(rt2x00dev, H2M_BBP_AGENT, 0);
	FUNC6(rt2x00dev, H2M_MAILBOX_CSR, 0);
	if (FUNC11(rt2x00dev)) {
		FUNC6(rt2x00dev, H2M_INT_SRC, 0);
		FUNC4(rt2x00dev, MCU_BOOT_SIGNAL, 0, 0, 0);
	}
	FUNC0(1);

	return 0;
}