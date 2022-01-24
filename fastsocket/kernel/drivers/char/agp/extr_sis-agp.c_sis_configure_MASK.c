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
struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {int gart_bus_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  gatt_bus_addr; int /*<<< orphan*/  current_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_APBASE ; 
 struct aper_size_info_8* FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 int /*<<< orphan*/  SIS_APSIZE ; 
 int /*<<< orphan*/  SIS_ATTBASE ; 
 int /*<<< orphan*/  SIS_TLBCNTRL ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	u32 temp;
	struct aper_size_info_8 *current_size;

	current_size = FUNC0(agp_bridge->current_size);
	FUNC2(agp_bridge->dev, SIS_TLBCNTRL, 0x05);
	FUNC1(agp_bridge->dev, AGP_APBASE, &temp);
	agp_bridge->gart_bus_addr = (temp & PCI_BASE_ADDRESS_MEM_MASK);
	FUNC3(agp_bridge->dev, SIS_ATTBASE,
			       agp_bridge->gatt_bus_addr);
	FUNC2(agp_bridge->dev, SIS_APSIZE,
			      current_size->size_value);
	return 0;
}