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
typedef  int /*<<< orphan*/  u64 ;
struct acpi_ioremap {int dummy; } ;
struct acpi_generic_address {scalar_t__ space_id; int bit_width; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  acpi_ioremap_lock ; 
 struct acpi_ioremap* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ioremap*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ioremap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct acpi_generic_address *gas)
{
	u64 addr;
	struct acpi_ioremap *map;

	if (gas->space_id != ACPI_ADR_SPACE_SYSTEM_MEMORY)
		return;

	/* Handle possible alignment issues */
	FUNC3(&addr, &gas->address, sizeof(addr));
	if (!addr || !gas->bit_width)
		return;

	FUNC4(&acpi_ioremap_lock);
	map = FUNC0(addr, gas->bit_width / 8);
	if (!map) {
		FUNC5(&acpi_ioremap_lock);
		return;
	}
	FUNC1(map);
	FUNC5(&acpi_ioremap_lock);

	FUNC2(map);
}