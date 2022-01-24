#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct TYPE_6__ {int /*<<< orphan*/  attrs; } ;
struct fw_unit {TYPE_1__ device; TYPE_2__ attribute_group; scalar_t__ directory; } ;
struct fw_device {int /*<<< orphan*/  device; int /*<<< orphan*/ * config_rom; } ;
struct fw_csr_iterator {scalar_t__ p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CSR_DIRECTORY ; 
 int CSR_UNIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  config_rom_attributes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  fw_bus_type ; 
 int /*<<< orphan*/  FUNC5 (struct fw_csr_iterator*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct fw_csr_iterator*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  fw_unit_attributes ; 
 int /*<<< orphan*/  fw_unit_type ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_unit*) ; 
 struct fw_unit* FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct fw_device *device)
{
	struct fw_csr_iterator ci;
	struct fw_unit *unit;
	int key, value, i;

	i = 0;
	FUNC5(&ci, &device->config_rom[5]);
	while (FUNC6(&ci, &key, &value)) {
		if (key != (CSR_UNIT | CSR_DIRECTORY))
			continue;

		/*
		 * Get the address of the unit directory and try to
		 * match the drivers id_tables against it.
		 */
		unit = FUNC10(sizeof(*unit), GFP_KERNEL);
		if (unit == NULL) {
			FUNC7("failed to allocate memory for unit\n");
			continue;
		}

		unit->directory = ci.p + value - 1;
		unit->device.bus = &fw_bus_type;
		unit->device.type = &fw_unit_type;
		unit->device.parent = &device->device;
		FUNC3(&unit->device, "%s.%d", FUNC2(&device->device), i++);

		FUNC1(FUNC0(unit->attribute_group.attrs) <
				FUNC0(fw_unit_attributes) +
				FUNC0(config_rom_attributes));
		FUNC8(&unit->device,
					fw_unit_attributes,
					&unit->attribute_group);

		if (FUNC4(&unit->device) < 0)
			goto skip_unit;

		continue;

	skip_unit:
		FUNC9(unit);
	}
}