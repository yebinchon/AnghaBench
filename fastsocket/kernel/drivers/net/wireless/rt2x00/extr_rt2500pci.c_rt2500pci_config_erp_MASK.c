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
struct rt2x00lib_erp {int short_preamble; int basic_rates; int slot_time; int sifs; int pifs; int difs; int eifs; int beacon_int; } ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_SIZE ; 
 int /*<<< orphan*/  ARCSR1 ; 
 int /*<<< orphan*/  ARCSR2 ; 
 int /*<<< orphan*/  ARCSR2_LENGTH ; 
 int /*<<< orphan*/  ARCSR2_SERVICE ; 
 int /*<<< orphan*/  ARCSR2_SIGNAL ; 
 int /*<<< orphan*/  ARCSR3 ; 
 int /*<<< orphan*/  ARCSR3_SERVICE ; 
 int /*<<< orphan*/  ARCSR3_SIGNAL ; 
 int /*<<< orphan*/  ARCSR4 ; 
 int /*<<< orphan*/  ARCSR4_SERVICE ; 
 int /*<<< orphan*/  ARCSR4_SIGNAL ; 
 int /*<<< orphan*/  ARCSR5 ; 
 int /*<<< orphan*/  ARCSR5_SERVICE ; 
 int /*<<< orphan*/  ARCSR5_SIGNAL ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int /*<<< orphan*/  CSR11 ; 
 int /*<<< orphan*/  CSR11_SLOT_TIME ; 
 int /*<<< orphan*/  CSR12 ; 
 int /*<<< orphan*/  CSR12_BEACON_INTERVAL ; 
 int /*<<< orphan*/  CSR12_CFP_MAX_DURATION ; 
 int /*<<< orphan*/  CSR18 ; 
 int /*<<< orphan*/  CSR18_PIFS ; 
 int /*<<< orphan*/  CSR18_SIFS ; 
 int /*<<< orphan*/  CSR19 ; 
 int /*<<< orphan*/  CSR19_DIFS ; 
 int /*<<< orphan*/  CSR19_EIFS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int IEEE80211_HEADER ; 
 int /*<<< orphan*/  TXCSR1 ; 
 int /*<<< orphan*/  TXCSR1_ACK_CONSUME_TIME ; 
 int /*<<< orphan*/  TXCSR1_ACK_TIMEOUT ; 
 int /*<<< orphan*/  TXCSR1_AUTORESPONDER ; 
 int /*<<< orphan*/  TXCSR1_TSF_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
				 struct rt2x00lib_erp *erp,
				 u32 changed)
{
	int preamble_mask;
	u32 reg;

	/*
	 * When short preamble is enabled, we should set bit 0x08
	 */
	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
		preamble_mask = erp->short_preamble << 3;

		FUNC2(rt2x00dev, TXCSR1, &reg);
		FUNC1(&reg, TXCSR1_ACK_TIMEOUT, 0x162);
		FUNC1(&reg, TXCSR1_ACK_CONSUME_TIME, 0xa2);
		FUNC1(&reg, TXCSR1_TSF_OFFSET, IEEE80211_HEADER);
		FUNC1(&reg, TXCSR1_AUTORESPONDER, 1);
		FUNC3(rt2x00dev, TXCSR1, reg);

		FUNC2(rt2x00dev, ARCSR2, &reg);
		FUNC1(&reg, ARCSR2_SIGNAL, 0x00);
		FUNC1(&reg, ARCSR2_SERVICE, 0x04);
		FUNC1(&reg, ARCSR2_LENGTH,
				   FUNC0(ACK_SIZE, 10));
		FUNC3(rt2x00dev, ARCSR2, reg);

		FUNC2(rt2x00dev, ARCSR3, &reg);
		FUNC1(&reg, ARCSR3_SIGNAL, 0x01 | preamble_mask);
		FUNC1(&reg, ARCSR3_SERVICE, 0x04);
		FUNC1(&reg, ARCSR2_LENGTH,
				   FUNC0(ACK_SIZE, 20));
		FUNC3(rt2x00dev, ARCSR3, reg);

		FUNC2(rt2x00dev, ARCSR4, &reg);
		FUNC1(&reg, ARCSR4_SIGNAL, 0x02 | preamble_mask);
		FUNC1(&reg, ARCSR4_SERVICE, 0x04);
		FUNC1(&reg, ARCSR2_LENGTH,
				   FUNC0(ACK_SIZE, 55));
		FUNC3(rt2x00dev, ARCSR4, reg);

		FUNC2(rt2x00dev, ARCSR5, &reg);
		FUNC1(&reg, ARCSR5_SIGNAL, 0x03 | preamble_mask);
		FUNC1(&reg, ARCSR5_SERVICE, 0x84);
		FUNC1(&reg, ARCSR2_LENGTH,
				   FUNC0(ACK_SIZE, 110));
		FUNC3(rt2x00dev, ARCSR5, reg);
	}

	if (changed & BSS_CHANGED_BASIC_RATES)
		FUNC3(rt2x00dev, ARCSR1, erp->basic_rates);

	if (changed & BSS_CHANGED_ERP_SLOT) {
		FUNC2(rt2x00dev, CSR11, &reg);
		FUNC1(&reg, CSR11_SLOT_TIME, erp->slot_time);
		FUNC3(rt2x00dev, CSR11, reg);

		FUNC2(rt2x00dev, CSR18, &reg);
		FUNC1(&reg, CSR18_SIFS, erp->sifs);
		FUNC1(&reg, CSR18_PIFS, erp->pifs);
		FUNC3(rt2x00dev, CSR18, reg);

		FUNC2(rt2x00dev, CSR19, &reg);
		FUNC1(&reg, CSR19_DIFS, erp->difs);
		FUNC1(&reg, CSR19_EIFS, erp->eifs);
		FUNC3(rt2x00dev, CSR19, reg);
	}

	if (changed & BSS_CHANGED_BEACON_INT) {
		FUNC2(rt2x00dev, CSR12, &reg);
		FUNC1(&reg, CSR12_BEACON_INTERVAL,
				   erp->beacon_int * 16);
		FUNC1(&reg, CSR12_CFP_MAX_DURATION,
				   erp->beacon_int * 16);
		FUNC3(rt2x00dev, CSR12, reg);
	}

}