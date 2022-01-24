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
typedef  int u32 ;
struct aper_size_info_16 {int /*<<< orphan*/  size_value; } ;
struct TYPE_2__ {int gart_bus_addr; int gatt_bus_addr; scalar_t__ capndx; int /*<<< orphan*/  dev; int /*<<< orphan*/  current_size; } ;

/* Variables and functions */
 scalar_t__ AGPAPSIZE ; 
 scalar_t__ AGPCTRL ; 
 int AGPCTRL_APERENB ; 
 int AGPCTRL_GTLBEN ; 
 scalar_t__ AGPGARTLO ; 
 scalar_t__ AGP_APBASE ; 
 struct aper_size_info_16* FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC4(void)
{
	u32 temp;
	struct aper_size_info_16 *current_size;

	current_size = FUNC0(agp_bridge->current_size);

	FUNC1(agp_bridge->dev, AGP_APBASE, &temp);
	agp_bridge->gart_bus_addr = (temp & PCI_BASE_ADDRESS_MEM_MASK);

	/* set aperture size */
	FUNC3(agp_bridge->dev, agp_bridge->capndx+AGPAPSIZE, current_size->size_value);
	/* set gart pointer */
	FUNC2(agp_bridge->dev, agp_bridge->capndx+AGPGARTLO, agp_bridge->gatt_bus_addr);
	/* enable aperture and GTLB */
	FUNC1(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, &temp);
	FUNC2(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, temp | AGPCTRL_APERENB | AGPCTRL_GTLBEN);
	return 0;
}