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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ahc_dev_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

uint32_t
FUNC4(ahc_dev_softc_t pci, int reg, int width)
{
	switch (width) {
	case 1:
	{
		uint8_t retval;

		FUNC1(pci, reg, &retval);
		return (retval);
	}
	case 2:
	{
		uint16_t retval;
		FUNC3(pci, reg, &retval);
		return (retval);
	}
	case 4:
	{
		uint32_t retval;
		FUNC2(pci, reg, &retval);
		return (retval);
	}
	default:
		FUNC0("ahc_pci_read_config: Read size too big");
		/* NOTREACHED */
		return (0);
	}
}