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
struct ath_softc {TYPE_2__* hw; int /*<<< orphan*/  sc_ah; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_RX_QUEUE_HP ; 
 int /*<<< orphan*/  ATH9K_RX_QUEUE_LP ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ath_softc *sc)
{
	FUNC0(sc->sc_ah);
	FUNC3(sc, ATH9K_RX_QUEUE_HP);
	FUNC3(sc, ATH9K_RX_QUEUE_LP);
	FUNC2(sc);
	FUNC1(sc->sc_ah, !!(sc->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL));
}