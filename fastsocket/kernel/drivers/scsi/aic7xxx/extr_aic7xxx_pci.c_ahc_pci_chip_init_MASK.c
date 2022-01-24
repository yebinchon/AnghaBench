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
typedef  int u_int ;
struct TYPE_3__ {int dscommand0; int dspcistatus; int optionmode; int crccontrol1; int scbbaddr; int dff_thrsh; int /*<<< orphan*/  targcrccnt; } ;
struct TYPE_4__ {TYPE_1__ pci_softc; } ;
struct ahc_softc {int features; TYPE_2__ bus_softc; } ;

/* Variables and functions */
 int AHC_DT ; 
 int AHC_MULTI_FUNC ; 
 int AHC_ULTRA2 ; 
 int ALT_MODE ; 
 int /*<<< orphan*/  CRCCONTROL1 ; 
 int /*<<< orphan*/  DFF_THRSH ; 
 int /*<<< orphan*/  DSCOMMAND0 ; 
 int /*<<< orphan*/  DSPCISTATUS ; 
 int /*<<< orphan*/  OPTIONMODE ; 
 int /*<<< orphan*/  SCBBADDR ; 
 int /*<<< orphan*/  SFUNCT ; 
 int /*<<< orphan*/  TARGCRCCNT ; 
 int FUNC0 (struct ahc_softc*) ; 
 int FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ahc_softc *ahc)
{
	FUNC2(ahc, DSCOMMAND0, ahc->bus_softc.pci_softc.dscommand0);
	FUNC2(ahc, DSPCISTATUS, ahc->bus_softc.pci_softc.dspcistatus);
	if ((ahc->features & AHC_DT) != 0) {
		u_int sfunct;

		sfunct = FUNC1(ahc, SFUNCT) & ~ALT_MODE;
		FUNC2(ahc, SFUNCT, sfunct | ALT_MODE);
		FUNC2(ahc, OPTIONMODE, ahc->bus_softc.pci_softc.optionmode);
		FUNC3(ahc, TARGCRCCNT, ahc->bus_softc.pci_softc.targcrccnt);
		FUNC2(ahc, SFUNCT, sfunct);
		FUNC2(ahc, CRCCONTROL1,
			 ahc->bus_softc.pci_softc.crccontrol1);
	}
	if ((ahc->features & AHC_MULTI_FUNC) != 0)
		FUNC2(ahc, SCBBADDR, ahc->bus_softc.pci_softc.scbbaddr);

	if ((ahc->features & AHC_ULTRA2) != 0)
		FUNC2(ahc, DFF_THRSH, ahc->bus_softc.pci_softc.dff_thrsh);

	return (FUNC0(ahc));
}