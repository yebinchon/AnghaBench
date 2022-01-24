#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {int capability; int type; } ;

/* Variables and functions */
#define  ACER_AMW0 130 
#define  ACER_AMW0_V2 129 
 int ACER_CAP_BLUETOOTH ; 
 int ACER_CAP_MAILLED ; 
 int ACER_CAP_WIRELESS ; 
#define  ACER_WMID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC1 (int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,TYPE_1__*) ; 
 TYPE_1__* interface ; 

__attribute__((used)) static acpi_status FUNC3(u32 value, u32 cap)
{
	acpi_status status;

	if (interface->capability & cap) {
		switch (interface->type) {
		case ACER_AMW0:
			return FUNC1(value, cap, interface);
		case ACER_AMW0_V2:
			if (cap == ACER_CAP_MAILLED)
				return FUNC1(value, cap, interface);

			/*
			 * On some models, some WMID methods don't toggle
			 * properly. For those cases, we want to run the AMW0
			 * method afterwards to be certain we've really toggled
			 * the device state.
			 */
			if (cap == ACER_CAP_WIRELESS ||
				cap == ACER_CAP_BLUETOOTH) {
				status = FUNC2(value, cap, interface);
				if (FUNC0(status))
					return status;

				return FUNC1(value, cap, interface);
			}
		case ACER_WMID:
			return FUNC2(value, cap, interface);
		default:
			return AE_BAD_PARAMETER;
		}
	}
	return AE_BAD_PARAMETER;
}