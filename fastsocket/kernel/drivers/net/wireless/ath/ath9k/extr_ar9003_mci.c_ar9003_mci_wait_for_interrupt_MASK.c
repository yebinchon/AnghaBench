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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int AR_MCI_INTERRUPT_RAW ; 
 int AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE ; 
 int AR_MCI_INTERRUPT_RX_MSG ; 
 int AR_MCI_INTERRUPT_RX_MSG_RAW ; 
 int AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE ; 
 int AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING ; 
 int AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING ; 
 int /*<<< orphan*/  MCI ; 
 int FUNC0 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ath_hw *ah, u32 address,
					u32 bit_position, int time_out)
{
	struct ath_common *common = FUNC3(ah);

	while (time_out) {
		if (!(FUNC0(ah, address) & bit_position)) {
			FUNC5(10);
			time_out -= 10;

			if (time_out < 0)
				break;
			else
				continue;
		}
		FUNC1(ah, address, bit_position);

		if (address != AR_MCI_INTERRUPT_RX_MSG_RAW)
			break;

		if (bit_position & AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE)
			FUNC2(ah);

		if (bit_position & (AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING |
				    AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING))
			FUNC1(ah, AR_MCI_INTERRUPT_RAW,
				  AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE);

		FUNC1(ah, AR_MCI_INTERRUPT_RAW, AR_MCI_INTERRUPT_RX_MSG);
		break;
	}

	if (time_out <= 0) {
		FUNC4(common, MCI,
			"MCI Wait for Reg 0x%08x = 0x%08x timeout\n",
			address, bit_position);
		FUNC4(common, MCI,
			"MCI INT_RAW = 0x%08x, RX_MSG_RAW = 0x%08x\n",
			FUNC0(ah, AR_MCI_INTERRUPT_RAW),
			FUNC0(ah, AR_MCI_INTERRUPT_RX_MSG_RAW));
		time_out = 0;
	}

	return time_out;
}