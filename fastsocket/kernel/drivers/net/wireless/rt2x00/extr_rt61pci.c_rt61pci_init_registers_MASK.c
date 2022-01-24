#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rt2x00_dev {TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {scalar_t__ (* set_device_state ) (struct rt2x00_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HW_BEACON_BASE0 ; 
 int /*<<< orphan*/  HW_BEACON_BASE1 ; 
 int /*<<< orphan*/  HW_BEACON_BASE2 ; 
 int /*<<< orphan*/  HW_BEACON_BASE3 ; 
 int /*<<< orphan*/  M2H_CMD_DONE_CSR ; 
 int /*<<< orphan*/  MAC_CSR1 ; 
 int /*<<< orphan*/  MAC_CSR10 ; 
 int /*<<< orphan*/  MAC_CSR13 ; 
 int /*<<< orphan*/  MAC_CSR1_BBP_RESET ; 
 int /*<<< orphan*/  MAC_CSR1_HOST_READY ; 
 int /*<<< orphan*/  MAC_CSR1_SOFT_RESET ; 
 int /*<<< orphan*/  MAC_CSR6 ; 
 int /*<<< orphan*/  MAC_CSR9 ; 
 int /*<<< orphan*/  MAC_CSR9_CW_SELECT ; 
 int /*<<< orphan*/  PCI_CFG_CSR ; 
 int /*<<< orphan*/  PHY_CSR1 ; 
 int /*<<< orphan*/  PHY_CSR5 ; 
 int /*<<< orphan*/  PHY_CSR6 ; 
 int /*<<< orphan*/  PHY_CSR7 ; 
 int /*<<< orphan*/  SEC_CSR0 ; 
 int /*<<< orphan*/  SEC_CSR1 ; 
 int /*<<< orphan*/  SEC_CSR5 ; 
 int /*<<< orphan*/  STATE_AWAKE ; 
 int /*<<< orphan*/  STA_CSR0 ; 
 int /*<<< orphan*/  STA_CSR1 ; 
 int /*<<< orphan*/  STA_CSR2 ; 
 int /*<<< orphan*/  TEST_MODE_CSR ; 
 int /*<<< orphan*/  TXRX_CSR0 ; 
 int /*<<< orphan*/  TXRX_CSR0_AUTO_TX_SEQ ; 
 int /*<<< orphan*/  TXRX_CSR0_DISABLE_RX ; 
 int /*<<< orphan*/  TXRX_CSR0_TX_WITHOUT_WAITING ; 
 int /*<<< orphan*/  TXRX_CSR1 ; 
 int /*<<< orphan*/  TXRX_CSR15 ; 
 int /*<<< orphan*/  TXRX_CSR1_BBP_ID0 ; 
 int /*<<< orphan*/  TXRX_CSR1_BBP_ID0_VALID ; 
 int /*<<< orphan*/  TXRX_CSR1_BBP_ID1 ; 
 int /*<<< orphan*/  TXRX_CSR1_BBP_ID1_VALID ; 
 int /*<<< orphan*/  TXRX_CSR1_BBP_ID2 ; 
 int /*<<< orphan*/  TXRX_CSR1_BBP_ID2_VALID ; 
 int /*<<< orphan*/  TXRX_CSR1_BBP_ID3 ; 
 int /*<<< orphan*/  TXRX_CSR1_BBP_ID3_VALID ; 
 int /*<<< orphan*/  TXRX_CSR2 ; 
 int /*<<< orphan*/  TXRX_CSR2_BBP_ID0 ; 
 int /*<<< orphan*/  TXRX_CSR2_BBP_ID0_VALID ; 
 int /*<<< orphan*/  TXRX_CSR2_BBP_ID1 ; 
 int /*<<< orphan*/  TXRX_CSR2_BBP_ID1_VALID ; 
 int /*<<< orphan*/  TXRX_CSR2_BBP_ID2 ; 
 int /*<<< orphan*/  TXRX_CSR2_BBP_ID2_VALID ; 
 int /*<<< orphan*/  TXRX_CSR2_BBP_ID3 ; 
 int /*<<< orphan*/  TXRX_CSR2_BBP_ID3_VALID ; 
 int /*<<< orphan*/  TXRX_CSR3 ; 
 int /*<<< orphan*/  TXRX_CSR3_BBP_ID0 ; 
 int /*<<< orphan*/  TXRX_CSR3_BBP_ID0_VALID ; 
 int /*<<< orphan*/  TXRX_CSR3_BBP_ID1 ; 
 int /*<<< orphan*/  TXRX_CSR3_BBP_ID1_VALID ; 
 int /*<<< orphan*/  TXRX_CSR3_BBP_ID2 ; 
 int /*<<< orphan*/  TXRX_CSR3_BBP_ID2_VALID ; 
 int /*<<< orphan*/  TXRX_CSR7 ; 
 int /*<<< orphan*/  TXRX_CSR7_ACK_CTS_12MBS ; 
 int /*<<< orphan*/  TXRX_CSR7_ACK_CTS_18MBS ; 
 int /*<<< orphan*/  TXRX_CSR7_ACK_CTS_6MBS ; 
 int /*<<< orphan*/  TXRX_CSR7_ACK_CTS_9MBS ; 
 int /*<<< orphan*/  TXRX_CSR8 ; 
 int /*<<< orphan*/  TXRX_CSR8_ACK_CTS_24MBS ; 
 int /*<<< orphan*/  TXRX_CSR8_ACK_CTS_36MBS ; 
 int /*<<< orphan*/  TXRX_CSR8_ACK_CTS_48MBS ; 
 int /*<<< orphan*/  TXRX_CSR8_ACK_CTS_54MBS ; 
 int /*<<< orphan*/  TXRX_CSR9 ; 
 int /*<<< orphan*/  TXRX_CSR9_BEACON_GEN ; 
 int /*<<< orphan*/  TXRX_CSR9_BEACON_INTERVAL ; 
 int /*<<< orphan*/  TXRX_CSR9_TBTT_ENABLE ; 
 int /*<<< orphan*/  TXRX_CSR9_TIMESTAMP_COMPENSATE ; 
 int /*<<< orphan*/  TXRX_CSR9_TSF_SYNC ; 
 int /*<<< orphan*/  TXRX_CSR9_TSF_TICKING ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	FUNC1(rt2x00dev, TXRX_CSR0, &reg);
	FUNC0(&reg, TXRX_CSR0_AUTO_TX_SEQ, 1);
	FUNC0(&reg, TXRX_CSR0_DISABLE_RX, 0);
	FUNC0(&reg, TXRX_CSR0_TX_WITHOUT_WAITING, 0);
	FUNC2(rt2x00dev, TXRX_CSR0, reg);

	FUNC1(rt2x00dev, TXRX_CSR1, &reg);
	FUNC0(&reg, TXRX_CSR1_BBP_ID0, 47); /* CCK Signal */
	FUNC0(&reg, TXRX_CSR1_BBP_ID0_VALID, 1);
	FUNC0(&reg, TXRX_CSR1_BBP_ID1, 30); /* Rssi */
	FUNC0(&reg, TXRX_CSR1_BBP_ID1_VALID, 1);
	FUNC0(&reg, TXRX_CSR1_BBP_ID2, 42); /* OFDM Rate */
	FUNC0(&reg, TXRX_CSR1_BBP_ID2_VALID, 1);
	FUNC0(&reg, TXRX_CSR1_BBP_ID3, 30); /* Rssi */
	FUNC0(&reg, TXRX_CSR1_BBP_ID3_VALID, 1);
	FUNC2(rt2x00dev, TXRX_CSR1, reg);

	/*
	 * CCK TXD BBP registers
	 */
	FUNC1(rt2x00dev, TXRX_CSR2, &reg);
	FUNC0(&reg, TXRX_CSR2_BBP_ID0, 13);
	FUNC0(&reg, TXRX_CSR2_BBP_ID0_VALID, 1);
	FUNC0(&reg, TXRX_CSR2_BBP_ID1, 12);
	FUNC0(&reg, TXRX_CSR2_BBP_ID1_VALID, 1);
	FUNC0(&reg, TXRX_CSR2_BBP_ID2, 11);
	FUNC0(&reg, TXRX_CSR2_BBP_ID2_VALID, 1);
	FUNC0(&reg, TXRX_CSR2_BBP_ID3, 10);
	FUNC0(&reg, TXRX_CSR2_BBP_ID3_VALID, 1);
	FUNC2(rt2x00dev, TXRX_CSR2, reg);

	/*
	 * OFDM TXD BBP registers
	 */
	FUNC1(rt2x00dev, TXRX_CSR3, &reg);
	FUNC0(&reg, TXRX_CSR3_BBP_ID0, 7);
	FUNC0(&reg, TXRX_CSR3_BBP_ID0_VALID, 1);
	FUNC0(&reg, TXRX_CSR3_BBP_ID1, 6);
	FUNC0(&reg, TXRX_CSR3_BBP_ID1_VALID, 1);
	FUNC0(&reg, TXRX_CSR3_BBP_ID2, 5);
	FUNC0(&reg, TXRX_CSR3_BBP_ID2_VALID, 1);
	FUNC2(rt2x00dev, TXRX_CSR3, reg);

	FUNC1(rt2x00dev, TXRX_CSR7, &reg);
	FUNC0(&reg, TXRX_CSR7_ACK_CTS_6MBS, 59);
	FUNC0(&reg, TXRX_CSR7_ACK_CTS_9MBS, 53);
	FUNC0(&reg, TXRX_CSR7_ACK_CTS_12MBS, 49);
	FUNC0(&reg, TXRX_CSR7_ACK_CTS_18MBS, 46);
	FUNC2(rt2x00dev, TXRX_CSR7, reg);

	FUNC1(rt2x00dev, TXRX_CSR8, &reg);
	FUNC0(&reg, TXRX_CSR8_ACK_CTS_24MBS, 44);
	FUNC0(&reg, TXRX_CSR8_ACK_CTS_36MBS, 42);
	FUNC0(&reg, TXRX_CSR8_ACK_CTS_48MBS, 42);
	FUNC0(&reg, TXRX_CSR8_ACK_CTS_54MBS, 42);
	FUNC2(rt2x00dev, TXRX_CSR8, reg);

	FUNC1(rt2x00dev, TXRX_CSR9, &reg);
	FUNC0(&reg, TXRX_CSR9_BEACON_INTERVAL, 0);
	FUNC0(&reg, TXRX_CSR9_TSF_TICKING, 0);
	FUNC0(&reg, TXRX_CSR9_TSF_SYNC, 0);
	FUNC0(&reg, TXRX_CSR9_TBTT_ENABLE, 0);
	FUNC0(&reg, TXRX_CSR9_BEACON_GEN, 0);
	FUNC0(&reg, TXRX_CSR9_TIMESTAMP_COMPENSATE, 0);
	FUNC2(rt2x00dev, TXRX_CSR9, reg);

	FUNC2(rt2x00dev, TXRX_CSR15, 0x0000000f);

	FUNC2(rt2x00dev, MAC_CSR6, 0x00000fff);

	FUNC1(rt2x00dev, MAC_CSR9, &reg);
	FUNC0(&reg, MAC_CSR9_CW_SELECT, 0);
	FUNC2(rt2x00dev, MAC_CSR9, reg);

	FUNC2(rt2x00dev, MAC_CSR10, 0x0000071c);

	if (rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_AWAKE))
		return -EBUSY;

	FUNC2(rt2x00dev, MAC_CSR13, 0x0000e000);

	/*
	 * Invalidate all Shared Keys (SEC_CSR0),
	 * and clear the Shared key Cipher algorithms (SEC_CSR1 & SEC_CSR5)
	 */
	FUNC2(rt2x00dev, SEC_CSR0, 0x00000000);
	FUNC2(rt2x00dev, SEC_CSR1, 0x00000000);
	FUNC2(rt2x00dev, SEC_CSR5, 0x00000000);

	FUNC2(rt2x00dev, PHY_CSR1, 0x000023b0);
	FUNC2(rt2x00dev, PHY_CSR5, 0x060a100c);
	FUNC2(rt2x00dev, PHY_CSR6, 0x00080606);
	FUNC2(rt2x00dev, PHY_CSR7, 0x00000a08);

	FUNC2(rt2x00dev, PCI_CFG_CSR, 0x28ca4404);

	FUNC2(rt2x00dev, TEST_MODE_CSR, 0x00000200);

	FUNC2(rt2x00dev, M2H_CMD_DONE_CSR, 0xffffffff);

	/*
	 * Clear all beacons
	 * For the Beacon base registers we only need to clear
	 * the first byte since that byte contains the VALID and OWNER
	 * bits which (when set to 0) will invalidate the entire beacon.
	 */
	FUNC2(rt2x00dev, HW_BEACON_BASE0, 0);
	FUNC2(rt2x00dev, HW_BEACON_BASE1, 0);
	FUNC2(rt2x00dev, HW_BEACON_BASE2, 0);
	FUNC2(rt2x00dev, HW_BEACON_BASE3, 0);

	/*
	 * We must clear the error counters.
	 * These registers are cleared on read,
	 * so we may pass a useless variable to store the value.
	 */
	FUNC1(rt2x00dev, STA_CSR0, &reg);
	FUNC1(rt2x00dev, STA_CSR1, &reg);
	FUNC1(rt2x00dev, STA_CSR2, &reg);

	/*
	 * Reset MAC and BBP registers.
	 */
	FUNC1(rt2x00dev, MAC_CSR1, &reg);
	FUNC0(&reg, MAC_CSR1_SOFT_RESET, 1);
	FUNC0(&reg, MAC_CSR1_BBP_RESET, 1);
	FUNC2(rt2x00dev, MAC_CSR1, reg);

	FUNC1(rt2x00dev, MAC_CSR1, &reg);
	FUNC0(&reg, MAC_CSR1_SOFT_RESET, 0);
	FUNC0(&reg, MAC_CSR1_BBP_RESET, 0);
	FUNC2(rt2x00dev, MAC_CSR1, reg);

	FUNC1(rt2x00dev, MAC_CSR1, &reg);
	FUNC0(&reg, MAC_CSR1_HOST_READY, 1);
	FUNC2(rt2x00dev, MAC_CSR1, reg);

	return 0;
}