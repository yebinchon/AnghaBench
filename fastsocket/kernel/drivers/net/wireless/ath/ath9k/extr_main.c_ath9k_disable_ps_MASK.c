#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_softc {int ps_enabled; int ps_flags; struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int hw_caps; } ;
struct ath_hw {int imask; TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int ATH9K_HW_CAP_AUTOSLEEP ; 
 int ATH9K_INT_TIM_TIMER ; 
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int /*<<< orphan*/  PS ; 
 int PS_WAIT_FOR_BEACON ; 
 int PS_WAIT_FOR_CAB ; 
 int PS_WAIT_FOR_PSPOLL_DATA ; 
 int PS_WAIT_FOR_TX_ACK ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC0(ah);

	sc->ps_enabled = false;
	FUNC2(ah, ATH9K_PM_AWAKE);
	if (!(ah->caps.hw_caps & ATH9K_HW_CAP_AUTOSLEEP)) {
		FUNC3(ah, 0);
		sc->ps_flags &= ~(PS_WAIT_FOR_BEACON |
				  PS_WAIT_FOR_CAB |
				  PS_WAIT_FOR_PSPOLL_DATA |
				  PS_WAIT_FOR_TX_ACK);
		if (ah->imask & ATH9K_INT_TIM_TIMER) {
			ah->imask &= ~ATH9K_INT_TIM_TIMER;
			FUNC1(ah);
		}
	}
	FUNC4(common, PS, "PowerSave disabled\n");
}