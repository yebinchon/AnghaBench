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
struct acpi_hardware_id {int /*<<< orphan*/  list; void* id; } ;
struct TYPE_2__ {int /*<<< orphan*/  ids; } ;
struct acpi_device {TYPE_1__ pnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_hardware_id*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(struct acpi_device *device, const char *dev_id)
{
	struct acpi_hardware_id *id;

	id = FUNC1(sizeof(*id), GFP_KERNEL);
	if (!id)
		return;

	id->id = FUNC1(FUNC4(dev_id) + 1, GFP_KERNEL);
	if (!id->id) {
		FUNC0(id);
		return;
	}

	FUNC3(id->id, dev_id);
	FUNC2(&id->list, &device->pnp.ids);
}