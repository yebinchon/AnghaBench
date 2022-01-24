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
typedef  int u16 ;
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int txmixer_gain_24g; int txmixer_gain_5g; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_FREQ ; 
 int /*<<< orphan*/  EEPROM_FREQ_LED_MODE ; 
 int /*<<< orphan*/  EEPROM_FREQ_LED_POLARITY ; 
 int /*<<< orphan*/  EEPROM_FREQ_OFFSET ; 
 int /*<<< orphan*/  EEPROM_LED_ACT_CONF ; 
 int /*<<< orphan*/  EEPROM_LED_AG_CONF ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY ; 
 int /*<<< orphan*/  EEPROM_LNA ; 
 int /*<<< orphan*/  EEPROM_LNA_A0 ; 
 int /*<<< orphan*/  EEPROM_MAC_ADDR_0 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RF_TYPE ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_TXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_ANT_DIVERSITY ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BROADBAND_EXT_LNA ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BT_COEXIST ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BW40M_2G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BW40M_5G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BW40M_SB_2G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BW40M_SB_5G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_CARDBUS_ACCEL ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_DAC_TEST ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_LNA_2G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_LNA_5G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_TX_ALC ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_HW_RADIO ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_INTERNAL_TX_ALC ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_WPS_PBC ; 
 int /*<<< orphan*/  EEPROM_RSSI_A ; 
 int /*<<< orphan*/  EEPROM_RSSI_A2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A2_LNA_A2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A2_OFFSET2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A_OFFSET0 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A_OFFSET1 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG2_LNA_A1 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG2_OFFSET2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG_OFFSET0 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG_OFFSET1 ; 
 int /*<<< orphan*/  EEPROM_TXMIXER_GAIN_A ; 
 int /*<<< orphan*/  EEPROM_TXMIXER_GAIN_A_VAL ; 
 int /*<<< orphan*/  EEPROM_TXMIXER_GAIN_BG ; 
 int /*<<< orphan*/  EEPROM_TXMIXER_GAIN_BG_VAL ; 
 int LED_MODE_TXRX_ACTIVITY ; 
 int RF2820 ; 
 int /*<<< orphan*/  RT2860 ; 
 int /*<<< orphan*/  RT2872 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (struct rt2x00_dev*) ; 
 int* FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct rt2x00_dev *rt2x00dev)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u16 word;
	u8 *mac;
	u8 default_lna_gain;
	int retval;

	/*
	 * Read the EEPROM.
	 */
	retval = FUNC3(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Start validation of the data that has been read.
	 */
	mac = FUNC4(rt2x00dev, EEPROM_MAC_ADDR_0);
	if (!FUNC2(mac)) {
		FUNC1(mac);
		FUNC5(rt2x00dev, "MAC: %pM\n", mac);
	}

	FUNC6(rt2x00dev, EEPROM_NIC_CONF0, &word);
	if (word == 0xffff) {
		FUNC10(&word, EEPROM_NIC_CONF0_RXPATH, 2);
		FUNC10(&word, EEPROM_NIC_CONF0_TXPATH, 1);
		FUNC10(&word, EEPROM_NIC_CONF0_RF_TYPE, RF2820);
		FUNC7(rt2x00dev, EEPROM_NIC_CONF0, word);
		FUNC5(rt2x00dev, "Antenna: 0x%04x\n", word);
	} else if (FUNC9(rt2x00dev, RT2860) ||
		   FUNC9(rt2x00dev, RT2872)) {
		/*
		 * There is a max of 2 RX streams for RT28x0 series
		 */
		if (FUNC8(word, EEPROM_NIC_CONF0_RXPATH) > 2)
			FUNC10(&word, EEPROM_NIC_CONF0_RXPATH, 2);
		FUNC7(rt2x00dev, EEPROM_NIC_CONF0, word);
	}

	FUNC6(rt2x00dev, EEPROM_NIC_CONF1, &word);
	if (word == 0xffff) {
		FUNC10(&word, EEPROM_NIC_CONF1_HW_RADIO, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_EXTERNAL_TX_ALC, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_EXTERNAL_LNA_2G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_EXTERNAL_LNA_5G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_CARDBUS_ACCEL, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BW40M_SB_2G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BW40M_SB_5G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_WPS_PBC, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BW40M_2G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BW40M_5G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BROADBAND_EXT_LNA, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_ANT_DIVERSITY, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_INTERNAL_TX_ALC, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BT_COEXIST, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_DAC_TEST, 0);
		FUNC7(rt2x00dev, EEPROM_NIC_CONF1, word);
		FUNC5(rt2x00dev, "NIC: 0x%04x\n", word);
	}

	FUNC6(rt2x00dev, EEPROM_FREQ, &word);
	if ((word & 0x00ff) == 0x00ff) {
		FUNC10(&word, EEPROM_FREQ_OFFSET, 0);
		FUNC7(rt2x00dev, EEPROM_FREQ, word);
		FUNC5(rt2x00dev, "Freq: 0x%04x\n", word);
	}
	if ((word & 0xff00) == 0xff00) {
		FUNC10(&word, EEPROM_FREQ_LED_MODE,
				   LED_MODE_TXRX_ACTIVITY);
		FUNC10(&word, EEPROM_FREQ_LED_POLARITY, 0);
		FUNC7(rt2x00dev, EEPROM_FREQ, word);
		FUNC7(rt2x00dev, EEPROM_LED_AG_CONF, 0x5555);
		FUNC7(rt2x00dev, EEPROM_LED_ACT_CONF, 0x2221);
		FUNC7(rt2x00dev, EEPROM_LED_POLARITY, 0xa9f8);
		FUNC5(rt2x00dev, "Led Mode: 0x%04x\n", word);
	}

	/*
	 * During the LNA validation we are going to use
	 * lna0 as correct value. Note that EEPROM_LNA
	 * is never validated.
	 */
	FUNC6(rt2x00dev, EEPROM_LNA, &word);
	default_lna_gain = FUNC8(word, EEPROM_LNA_A0);

	FUNC6(rt2x00dev, EEPROM_RSSI_BG, &word);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_BG_OFFSET0)) > 10)
		FUNC10(&word, EEPROM_RSSI_BG_OFFSET0, 0);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_BG_OFFSET1)) > 10)
		FUNC10(&word, EEPROM_RSSI_BG_OFFSET1, 0);
	FUNC7(rt2x00dev, EEPROM_RSSI_BG, word);

	FUNC6(rt2x00dev, EEPROM_TXMIXER_GAIN_BG, &word);
	if ((word & 0x00ff) != 0x00ff) {
		drv_data->txmixer_gain_24g =
			FUNC8(word, EEPROM_TXMIXER_GAIN_BG_VAL);
	} else {
		drv_data->txmixer_gain_24g = 0;
	}

	FUNC6(rt2x00dev, EEPROM_RSSI_BG2, &word);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_BG2_OFFSET2)) > 10)
		FUNC10(&word, EEPROM_RSSI_BG2_OFFSET2, 0);
	if (FUNC8(word, EEPROM_RSSI_BG2_LNA_A1) == 0x00 ||
	    FUNC8(word, EEPROM_RSSI_BG2_LNA_A1) == 0xff)
		FUNC10(&word, EEPROM_RSSI_BG2_LNA_A1,
				   default_lna_gain);
	FUNC7(rt2x00dev, EEPROM_RSSI_BG2, word);

	FUNC6(rt2x00dev, EEPROM_TXMIXER_GAIN_A, &word);
	if ((word & 0x00ff) != 0x00ff) {
		drv_data->txmixer_gain_5g =
			FUNC8(word, EEPROM_TXMIXER_GAIN_A_VAL);
	} else {
		drv_data->txmixer_gain_5g = 0;
	}

	FUNC6(rt2x00dev, EEPROM_RSSI_A, &word);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_A_OFFSET0)) > 10)
		FUNC10(&word, EEPROM_RSSI_A_OFFSET0, 0);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_A_OFFSET1)) > 10)
		FUNC10(&word, EEPROM_RSSI_A_OFFSET1, 0);
	FUNC7(rt2x00dev, EEPROM_RSSI_A, word);

	FUNC6(rt2x00dev, EEPROM_RSSI_A2, &word);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_A2_OFFSET2)) > 10)
		FUNC10(&word, EEPROM_RSSI_A2_OFFSET2, 0);
	if (FUNC8(word, EEPROM_RSSI_A2_LNA_A2) == 0x00 ||
	    FUNC8(word, EEPROM_RSSI_A2_LNA_A2) == 0xff)
		FUNC10(&word, EEPROM_RSSI_A2_LNA_A2,
				   default_lna_gain);
	FUNC7(rt2x00dev, EEPROM_RSSI_A2, word);

	return 0;
}