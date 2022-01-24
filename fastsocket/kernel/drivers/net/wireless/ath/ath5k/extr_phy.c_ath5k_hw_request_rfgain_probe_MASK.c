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
struct TYPE_4__ {scalar_t__ g_state; } ;
struct TYPE_3__ {scalar_t__ txp_ofdm; } ;
struct ath5k_hw {TYPE_2__ ah_gain; TYPE_1__ ah_txpower; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_PHY_PAPD_PROBE ; 
 int /*<<< orphan*/  AR5K_PHY_PAPD_PROBE_TXPOWER ; 
 int AR5K_PHY_PAPD_PROBE_TX_NEXT ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ AR5K_RFGAIN_ACTIVE ; 
 scalar_t__ AR5K_RFGAIN_READ_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ath5k_hw *ah)
{

	/* Skip if gain calibration is inactive or
	 * we already handle a probe request */
	if (ah->ah_gain.g_state != AR5K_RFGAIN_ACTIVE)
		return;

	/* Send the packet with 2dB below max power as
	 * patent doc suggest */
	FUNC1(ah, FUNC0(ah->ah_txpower.txp_ofdm - 4,
			AR5K_PHY_PAPD_PROBE_TXPOWER) |
			AR5K_PHY_PAPD_PROBE_TX_NEXT, AR5K_PHY_PAPD_PROBE);

	ah->ah_gain.g_state = AR5K_RFGAIN_READ_REQUESTED;

}