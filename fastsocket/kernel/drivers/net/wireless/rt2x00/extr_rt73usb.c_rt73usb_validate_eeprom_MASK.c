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
typedef  int u16 ;
struct rt2x00_dev {int /*<<< orphan*/  eeprom; } ;
typedef  int s8 ;

/* Variables and functions */
 int ANTENNA_B ; 
 int /*<<< orphan*/  EEPROM_ANTENNA ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_DYN_TXAGC ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_FRAME_TYPE ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_HARDWARE_RADIO ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_NUM ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_RF_TYPE ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_RX_DEFAULT ; 
 int /*<<< orphan*/  EEPROM_ANTENNA_TX_DEFAULT ; 
 int /*<<< orphan*/  EEPROM_FREQ ; 
 int /*<<< orphan*/  EEPROM_FREQ_OFFSET ; 
 int /*<<< orphan*/  EEPROM_FREQ_SEQ ; 
 int /*<<< orphan*/  EEPROM_LED ; 
 int /*<<< orphan*/  EEPROM_LED_LED_MODE ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY_ACT ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY_GPIO_0 ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY_GPIO_1 ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY_GPIO_2 ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY_GPIO_3 ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY_GPIO_4 ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY_RDY_A ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY_RDY_G ; 
 int /*<<< orphan*/  EEPROM_MAC_ADDR_0 ; 
 int /*<<< orphan*/  EEPROM_NIC ; 
 int /*<<< orphan*/  EEPROM_NIC_EXTERNAL_LNA ; 
 int /*<<< orphan*/  EEPROM_RSSI_OFFSET_A ; 
 int /*<<< orphan*/  EEPROM_RSSI_OFFSET_A_1 ; 
 int /*<<< orphan*/  EEPROM_RSSI_OFFSET_A_2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_OFFSET_BG ; 
 int /*<<< orphan*/  EEPROM_RSSI_OFFSET_BG_1 ; 
 int /*<<< orphan*/  EEPROM_RSSI_OFFSET_BG_2 ; 
 int /*<<< orphan*/  EEPROM_SIZE ; 
 int LED_MODE_DEFAULT ; 
 int RF5226 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rt2x00_dev *rt2x00dev)
{
	u16 word;
	u8 *mac;
	s8 value;

	FUNC8(rt2x00dev, rt2x00dev->eeprom, EEPROM_SIZE);

	/*
	 * Start validation of the data that has been read.
	 */
	mac = FUNC2(rt2x00dev, EEPROM_MAC_ADDR_0);
	if (!FUNC1(mac)) {
		FUNC0(mac);
		FUNC3(rt2x00dev, "MAC: %pM\n", *mac);
	}

	FUNC4(rt2x00dev, EEPROM_ANTENNA, &word);
	if (word == 0xffff) {
		FUNC7(&word, EEPROM_ANTENNA_NUM, 2);
		FUNC7(&word, EEPROM_ANTENNA_TX_DEFAULT,
				   ANTENNA_B);
		FUNC7(&word, EEPROM_ANTENNA_RX_DEFAULT,
				   ANTENNA_B);
		FUNC7(&word, EEPROM_ANTENNA_FRAME_TYPE, 0);
		FUNC7(&word, EEPROM_ANTENNA_DYN_TXAGC, 0);
		FUNC7(&word, EEPROM_ANTENNA_HARDWARE_RADIO, 0);
		FUNC7(&word, EEPROM_ANTENNA_RF_TYPE, RF5226);
		FUNC5(rt2x00dev, EEPROM_ANTENNA, word);
		FUNC3(rt2x00dev, "Antenna: 0x%04x\n", word);
	}

	FUNC4(rt2x00dev, EEPROM_NIC, &word);
	if (word == 0xffff) {
		FUNC7(&word, EEPROM_NIC_EXTERNAL_LNA, 0);
		FUNC5(rt2x00dev, EEPROM_NIC, word);
		FUNC3(rt2x00dev, "NIC: 0x%04x\n", word);
	}

	FUNC4(rt2x00dev, EEPROM_LED, &word);
	if (word == 0xffff) {
		FUNC7(&word, EEPROM_LED_POLARITY_RDY_G, 0);
		FUNC7(&word, EEPROM_LED_POLARITY_RDY_A, 0);
		FUNC7(&word, EEPROM_LED_POLARITY_ACT, 0);
		FUNC7(&word, EEPROM_LED_POLARITY_GPIO_0, 0);
		FUNC7(&word, EEPROM_LED_POLARITY_GPIO_1, 0);
		FUNC7(&word, EEPROM_LED_POLARITY_GPIO_2, 0);
		FUNC7(&word, EEPROM_LED_POLARITY_GPIO_3, 0);
		FUNC7(&word, EEPROM_LED_POLARITY_GPIO_4, 0);
		FUNC7(&word, EEPROM_LED_LED_MODE,
				   LED_MODE_DEFAULT);
		FUNC5(rt2x00dev, EEPROM_LED, word);
		FUNC3(rt2x00dev, "Led: 0x%04x\n", word);
	}

	FUNC4(rt2x00dev, EEPROM_FREQ, &word);
	if (word == 0xffff) {
		FUNC7(&word, EEPROM_FREQ_OFFSET, 0);
		FUNC7(&word, EEPROM_FREQ_SEQ, 0);
		FUNC5(rt2x00dev, EEPROM_FREQ, word);
		FUNC3(rt2x00dev, "Freq: 0x%04x\n", word);
	}

	FUNC4(rt2x00dev, EEPROM_RSSI_OFFSET_BG, &word);
	if (word == 0xffff) {
		FUNC7(&word, EEPROM_RSSI_OFFSET_BG_1, 0);
		FUNC7(&word, EEPROM_RSSI_OFFSET_BG_2, 0);
		FUNC5(rt2x00dev, EEPROM_RSSI_OFFSET_BG, word);
		FUNC3(rt2x00dev, "RSSI OFFSET BG: 0x%04x\n", word);
	} else {
		value = FUNC6(word, EEPROM_RSSI_OFFSET_BG_1);
		if (value < -10 || value > 10)
			FUNC7(&word, EEPROM_RSSI_OFFSET_BG_1, 0);
		value = FUNC6(word, EEPROM_RSSI_OFFSET_BG_2);
		if (value < -10 || value > 10)
			FUNC7(&word, EEPROM_RSSI_OFFSET_BG_2, 0);
		FUNC5(rt2x00dev, EEPROM_RSSI_OFFSET_BG, word);
	}

	FUNC4(rt2x00dev, EEPROM_RSSI_OFFSET_A, &word);
	if (word == 0xffff) {
		FUNC7(&word, EEPROM_RSSI_OFFSET_A_1, 0);
		FUNC7(&word, EEPROM_RSSI_OFFSET_A_2, 0);
		FUNC5(rt2x00dev, EEPROM_RSSI_OFFSET_A, word);
		FUNC3(rt2x00dev, "RSSI OFFSET A: 0x%04x\n", word);
	} else {
		value = FUNC6(word, EEPROM_RSSI_OFFSET_A_1);
		if (value < -10 || value > 10)
			FUNC7(&word, EEPROM_RSSI_OFFSET_A_1, 0);
		value = FUNC6(word, EEPROM_RSSI_OFFSET_A_2);
		if (value < -10 || value > 10)
			FUNC7(&word, EEPROM_RSSI_OFFSET_A_2, 0);
		FUNC5(rt2x00dev, EEPROM_RSSI_OFFSET_A, word);
	}

	return 0;
}