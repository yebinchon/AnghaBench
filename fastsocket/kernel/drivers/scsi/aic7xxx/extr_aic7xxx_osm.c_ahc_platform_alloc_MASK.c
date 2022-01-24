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
struct ahc_softc {int seltime; int seltime_b; int /*<<< orphan*/  flags; TYPE_1__* platform_data; } ;
struct ahc_platform_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_DISABLE_PCI_PERR ; 
 int /*<<< orphan*/  AHC_LINUX_NOIRQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*) ; 
 scalar_t__ aic7xxx_pci_parity ; 
 int aic7xxx_seltime ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct ahc_softc *ahc, void *platform_arg)
{

	ahc->platform_data =
	    FUNC1(sizeof(struct ahc_platform_data), M_DEVBUF, M_NOWAIT);
	if (ahc->platform_data == NULL)
		return (ENOMEM);
	FUNC2(ahc->platform_data, 0, sizeof(struct ahc_platform_data));
	ahc->platform_data->irq = AHC_LINUX_NOIRQ;
	FUNC0(ahc);
	ahc->seltime = (aic7xxx_seltime & 0x3) << 4;
	ahc->seltime_b = (aic7xxx_seltime & 0x3) << 4;
	if (aic7xxx_pci_parity == 0)
		ahc->flags |= AHC_DISABLE_PCI_PERR;

	return (0);
}