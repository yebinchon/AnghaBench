#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  EnclosureSlot; int /*<<< orphan*/  SasWwid; } ;
typedef  TYPE_1__ Mpi2BiosPage2BootDevice_t ;

/* Variables and functions */
#define  MPI2_BIOSPAGE2_FORM_DEVICE_NAME 131 
#define  MPI2_BIOSPAGE2_FORM_ENCLOSURE_SLOT 130 
#define  MPI2_BIOSPAGE2_FORM_NO_DEVICE_SPECIFIED 129 
#define  MPI2_BIOSPAGE2_FORM_SAS_WWID 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(u64 sas_address, u64 device_name,
	u64 enclosure_logical_id, u16 slot, u8 form,
	Mpi2BiosPage2BootDevice_t *boot_device)
{
	int rc = 0;

	switch (form) {
	case MPI2_BIOSPAGE2_FORM_SAS_WWID:
		if (!sas_address)
			break;
		rc = FUNC2(
		    sas_address, &boot_device->SasWwid);
		break;
	case MPI2_BIOSPAGE2_FORM_ENCLOSURE_SLOT:
		if (!enclosure_logical_id)
			break;
		rc = FUNC1(
		    enclosure_logical_id,
		    slot, &boot_device->EnclosureSlot);
		break;
	case MPI2_BIOSPAGE2_FORM_DEVICE_NAME:
		if (!device_name)
			break;
		rc = FUNC0(
		    device_name, &boot_device->DeviceName);
		break;
	case MPI2_BIOSPAGE2_FORM_NO_DEVICE_SPECIFIED:
		break;
	}

	return rc;
}