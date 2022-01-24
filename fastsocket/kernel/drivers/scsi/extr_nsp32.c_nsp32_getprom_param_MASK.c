#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* pci_devid; } ;
typedef  TYPE_2__ nsp32_hw_data ;
struct TYPE_7__ {int vendor; int device; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  NSP32_DEBUG_EEPROM ; 
 int PCI_DEVICE_ID_NINJASCSI_32BIB_LOGITEC ; 
 int PCI_DEVICE_ID_NINJASCSI_32UDE_MELCO ; 
 int PCI_DEVICE_ID_WORKBIT_STANDARD ; 
 int PCI_VENDOR_ID_WORKBIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC5(nsp32_hw_data *data)
{
	int vendor = data->pci_devid->vendor;
	int device = data->pci_devid->device;
	int ret, val, i;

	/*
	 * EEPROM checking.
	 */
	ret = FUNC4(data, 0x7e);
	if (ret != 0x55) {
		FUNC3(KERN_INFO, "No EEPROM detected: 0x%x", ret);
		return FALSE;
	}
	ret = FUNC4(data, 0x7f);
	if (ret != 0xaa) {
		FUNC3(KERN_INFO, "Invalid number: 0x%x", ret);
		return FALSE;
	}

	/*
	 * check EEPROM type
	 */
	if (vendor == PCI_VENDOR_ID_WORKBIT &&
	    device == PCI_DEVICE_ID_WORKBIT_STANDARD) {
		ret = FUNC2(data);
	} else if (vendor == PCI_VENDOR_ID_WORKBIT &&
		   device == PCI_DEVICE_ID_NINJASCSI_32BIB_LOGITEC) {
		ret = FUNC1(data);
	} else if (vendor == PCI_VENDOR_ID_WORKBIT &&
		   device == PCI_DEVICE_ID_NINJASCSI_32UDE_MELCO ) {
		ret = FUNC1(data);
	} else {
		FUNC3(KERN_WARNING, "Unknown EEPROM");
		ret = FALSE;
	}

	/* for debug : SPROM data full checking */
	for (i = 0; i <= 0x1f; i++) {
		val = FUNC4(data, i);
		FUNC0(NSP32_DEBUG_EEPROM,
			  "rom address 0x%x : 0x%x", i, val);
	}

	return ret;
}