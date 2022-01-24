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
typedef  int u8 ;
struct TYPE_2__ {int beacon_interval; } ;
struct ath_softc {TYPE_1__ cur_beacon_conf; int /*<<< orphan*/  rx_poll_timer; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_OP_PRIM_STA_VIF ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct ath_softc *sc, u8 nbeacon)
{
	if (!FUNC0(sc->sc_ah))
		return;

	if (!FUNC3(SC_OP_PRIM_STA_VIF, &sc->sc_flags))
		return;

	FUNC1(&sc->rx_poll_timer, jiffies + FUNC2
		  (nbeacon * sc->cur_beacon_conf.beacon_interval));
}