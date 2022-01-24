#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ide_acpi_hwif_link {int dummy; } ;
struct TYPE_6__ {TYPE_2__* acpidata; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int /*<<< orphan*/  obj_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(ide_hwif_t *hwif)
{
	hwif->acpidata = FUNC3(sizeof(struct ide_acpi_hwif_link), GFP_KERNEL);
	if (!hwif->acpidata)
		return;

	hwif->acpidata->obj_handle = FUNC1(hwif);
	if (!hwif->acpidata->obj_handle) {
		FUNC0("no ACPI object for %s found\n", hwif->name);
		FUNC2(hwif->acpidata);
		hwif->acpidata = NULL;
	}
}