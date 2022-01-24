#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct aper_size_info_8 {int size_value; } ;
struct TYPE_7__ {int gatt_bus_addr; int gart_bus_addr; TYPE_1__* dev; int /*<<< orphan*/  current_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_APBASE ; 
 struct aper_size_info_8* FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  INTEL_815_APCONT ; 
 int INTEL_815_ATTBASE_MASK ; 
 int /*<<< orphan*/  INTEL_AGPCTRL ; 
 int /*<<< orphan*/  INTEL_APSIZE ; 
 int /*<<< orphan*/  INTEL_ATTBASE ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 TYPE_5__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	u32 temp, addr;
	u8 temp2;
	struct aper_size_info_8 *current_size;

	/* attbase - aperture base */
	/* the Intel 815 chipset spec. says that bits 29-31 in the
	* ATTBASE register are reserved -> try not to write them */
	if (agp_bridge->gatt_bus_addr & INTEL_815_ATTBASE_MASK) {
		FUNC1(&agp_bridge->dev->dev, "gatt bus addr too high");
		return -EINVAL;
	}

	current_size = FUNC0(agp_bridge->current_size);

	/* aperture size */
	FUNC4(agp_bridge->dev, INTEL_APSIZE,
			current_size->size_value);

	/* address to map to */
	FUNC3(agp_bridge->dev, AGP_APBASE, &temp);
	agp_bridge->gart_bus_addr = (temp & PCI_BASE_ADDRESS_MEM_MASK);

	FUNC3(agp_bridge->dev, INTEL_ATTBASE, &addr);
	addr &= INTEL_815_ATTBASE_MASK;
	addr |= agp_bridge->gatt_bus_addr;
	FUNC5(agp_bridge->dev, INTEL_ATTBASE, addr);

	/* agpctrl */
	FUNC5(agp_bridge->dev, INTEL_AGPCTRL, 0x0000);

	/* apcont */
	FUNC2(agp_bridge->dev, INTEL_815_APCONT, &temp2);
	FUNC4(agp_bridge->dev, INTEL_815_APCONT, temp2 | (1 << 1));

	/* clear any possible error conditions */
	/* Oddness : this chipset seems to have no ERRSTS register ! */
	return 0;
}