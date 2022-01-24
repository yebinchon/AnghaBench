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
typedef  int u16 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_LED_ACT_CONF ; 
 int /*<<< orphan*/  EEPROM_LED_AG_CONF ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY ; 
 int EIO ; 
 int /*<<< orphan*/  H2M_BBP_AGENT ; 
 int /*<<< orphan*/  H2M_INT_SRC ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR ; 
 int /*<<< orphan*/  MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_ENABLE_RX ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  MCU_BOOT_SIGNAL ; 
 int /*<<< orphan*/  MCU_CURRENT ; 
 int /*<<< orphan*/  MCU_LED_ACT_CONF ; 
 int /*<<< orphan*/  MCU_LED_AG_CONF ; 
 int /*<<< orphan*/  MCU_LED_LED_POLARITY ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  RT3071 ; 
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_ENABLE_RX_DMA ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_ENABLE_TX_DMA ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 int /*<<< orphan*/  WPDMA_GLO_CFG_WP_DMA_BURST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC10 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;
	u16 word;

	/*
	 * Initialize all registers.
	 */
	if (FUNC13(FUNC7(rt2x00dev) ||
		     FUNC2(rt2x00dev)))
		return -EIO;

	/*
	 * Send signal to firmware during boot time.
	 */
	FUNC6(rt2x00dev, H2M_BBP_AGENT, 0);
	FUNC6(rt2x00dev, H2M_MAILBOX_CSR, 0);
	if (FUNC9(rt2x00dev)) {
		FUNC6(rt2x00dev, H2M_INT_SRC, 0);
		FUNC4(rt2x00dev, MCU_BOOT_SIGNAL, 0, 0, 0);
	}
	FUNC0(1);

	if (FUNC13(FUNC1(rt2x00dev)))
		return -EIO;

	FUNC3(rt2x00dev);

	if (FUNC9(rt2x00dev) &&
	    (FUNC10(rt2x00dev, RT3070) ||
	     FUNC10(rt2x00dev, RT3071) ||
	     FUNC10(rt2x00dev, RT3572))) {
		FUNC12(200);
		FUNC4(rt2x00dev, MCU_CURRENT, 0, 0, 0);
		FUNC12(10);
	}

	/*
	 * Enable RX.
	 */
	FUNC5(rt2x00dev, MAC_SYS_CTRL, &reg);
	FUNC11(&reg, MAC_SYS_CTRL_ENABLE_TX, 1);
	FUNC11(&reg, MAC_SYS_CTRL_ENABLE_RX, 0);
	FUNC6(rt2x00dev, MAC_SYS_CTRL, reg);

	FUNC12(50);

	FUNC5(rt2x00dev, WPDMA_GLO_CFG, &reg);
	FUNC11(&reg, WPDMA_GLO_CFG_ENABLE_TX_DMA, 1);
	FUNC11(&reg, WPDMA_GLO_CFG_ENABLE_RX_DMA, 1);
	FUNC11(&reg, WPDMA_GLO_CFG_WP_DMA_BURST_SIZE, 2);
	FUNC11(&reg, WPDMA_GLO_CFG_TX_WRITEBACK_DONE, 1);
	FUNC6(rt2x00dev, WPDMA_GLO_CFG, reg);

	FUNC5(rt2x00dev, MAC_SYS_CTRL, &reg);
	FUNC11(&reg, MAC_SYS_CTRL_ENABLE_TX, 1);
	FUNC11(&reg, MAC_SYS_CTRL_ENABLE_RX, 1);
	FUNC6(rt2x00dev, MAC_SYS_CTRL, reg);

	/*
	 * Initialize LED control
	 */
	FUNC8(rt2x00dev, EEPROM_LED_AG_CONF, &word);
	FUNC4(rt2x00dev, MCU_LED_AG_CONF, 0xff,
			   word & 0xff, (word >> 8) & 0xff);

	FUNC8(rt2x00dev, EEPROM_LED_ACT_CONF, &word);
	FUNC4(rt2x00dev, MCU_LED_ACT_CONF, 0xff,
			   word & 0xff, (word >> 8) & 0xff);

	FUNC8(rt2x00dev, EEPROM_LED_POLARITY, &word);
	FUNC4(rt2x00dev, MCU_LED_LED_POLARITY, 0xff,
			   word & 0xff, (word >> 8) & 0xff);

	return 0;
}