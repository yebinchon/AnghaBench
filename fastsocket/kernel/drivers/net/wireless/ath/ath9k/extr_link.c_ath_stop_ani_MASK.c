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
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct ath_common {TYPE_1__ ani; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath_softc *sc)
{
	struct ath_common *common = FUNC0(sc->sc_ah);

	FUNC1(common, ANI, "Stopping ANI\n");
	FUNC2(&common->ani.timer);
}