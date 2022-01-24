#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ if_type; int /*<<< orphan*/  lmc_device; } ;
typedef  TYPE_1__ lmc_softc_t ;

/* Variables and functions */
 scalar_t__ LMC_PPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(lmc_softc_t *sc)
{
	FUNC1(sc->lmc_device, "lmc_proto_close in");

	if (sc->if_type == LMC_PPP)
		FUNC0(sc->lmc_device);

	FUNC1(sc->lmc_device, "lmc_proto_close out");
}