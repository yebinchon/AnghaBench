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
typedef  int u8 ;
typedef  int u32 ;
struct acpi_pci_id {int bus; int /*<<< orphan*/  function; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  METHOD_NAME__ADR ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_pci_id*,int,int*,int) ; 

__attribute__((used)) static void FUNC9(acpi_handle rhandle,	/* upper bound  */
				    acpi_handle chandle,	/* current node */
				    struct acpi_pci_id **id,
				    int *is_bridge, u8 * bus_number)
{
	acpi_handle handle;
	struct acpi_pci_id *pci_id = *id;
	acpi_status status;
	unsigned long long temp;
	acpi_object_type type;

	FUNC6(chandle, &handle);
	if (handle != rhandle) {
		FUNC9(rhandle, handle, &pci_id, is_bridge,
					bus_number);

		status = FUNC7(handle, &type);
		if ((FUNC0(status)) || (type != ACPI_TYPE_DEVICE))
			return;

		status = FUNC5(handle, METHOD_NAME__ADR, NULL,
					  &temp);
		if (FUNC4(status)) {
			u32 val;
			pci_id->device = FUNC1(FUNC2(temp));
			pci_id->function = FUNC3(FUNC2(temp));

			if (*is_bridge)
				pci_id->bus = *bus_number;

			/* any nicer way to get bus number of bridge ? */
			status =
			    FUNC8(pci_id, 0x0e, &val,
							   8);
			if (FUNC4(status)
			    && ((val & 0x7f) == 1 || (val & 0x7f) == 2)) {
				status =
				    FUNC8(pci_id, 0x18,
								   &val, 8);
				if (!FUNC4(status)) {
					/* Certainly broken...  FIX ME */
					return;
				}
				*is_bridge = 1;
				pci_id->bus = val;
				status =
				    FUNC8(pci_id, 0x19,
								   &val, 8);
				if (FUNC4(status)) {
					*bus_number = val;
				}
			} else
				*is_bridge = 0;
		}
	}
}