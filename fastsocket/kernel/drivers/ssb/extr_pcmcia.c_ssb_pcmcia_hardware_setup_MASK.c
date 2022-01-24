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
struct ssb_bus {scalar_t__ bustype; } ;

/* Variables and functions */
 scalar_t__ CISREG_COR ; 
 scalar_t__ SSB_BUSTYPE_PCMCIA ; 
 int FUNC0 (struct ssb_bus*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_bus*,int /*<<< orphan*/ ) ; 

int FUNC2(struct ssb_bus *bus)
{
	int err;

	if (bus->bustype != SSB_BUSTYPE_PCMCIA)
		return 0;

	/* Switch segment to a known state and sync
	 * bus->mapped_pcmcia_seg with hardware state. */
	FUNC1(bus, 0);
	/* Init the COR register. */
	err = FUNC0(bus, CISREG_COR);
	if (err)
		return err;
	/* Some cards also need this register to get poked. */
	err = FUNC0(bus, CISREG_COR + 0x80);
	if (err)
		return err;

	return 0;
}