#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ device; } ;
struct TYPE_5__ {int reset_print; int /*<<< orphan*/  host; int /*<<< orphan*/  flags; TYPE_3__* tw_pci_dev; } ;
typedef  TYPE_1__ TW_Device_Extension ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_3WARE_9650SE ; 
 scalar_t__ PCI_DEVICE_ID_3WARE_9690SA ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int /*<<< orphan*/  TW_CONTROL_CLEAR_PARITY_ERROR ; 
 int /*<<< orphan*/  TW_CONTROL_CLEAR_PCI_ABORT ; 
 int /*<<< orphan*/  TW_CONTROL_CLEAR_QUEUE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TW_DRIVER ; 
 int /*<<< orphan*/  TW_IN_RESET ; 
 int /*<<< orphan*/  TW_PCI_CLEAR_PCI_ABORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int TW_STATUS_MICROCONTROLLER_ERROR ; 
 int TW_STATUS_PCI_ABORT ; 
 int TW_STATUS_PCI_PARITY_ERROR ; 
 int TW_STATUS_QUEUE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(TW_Device_Extension *tw_dev, u32 status_reg_value)
{
	int retval = 1;

	/* Check for various error conditions and handle them appropriately */
	if (status_reg_value & TW_STATUS_PCI_PARITY_ERROR) {
		FUNC1(tw_dev->host, TW_DRIVER, 0xc, "PCI Parity Error: clearing");
		FUNC4(TW_CONTROL_CLEAR_PARITY_ERROR, FUNC0(tw_dev));
	}

	if (status_reg_value & TW_STATUS_PCI_ABORT) {
		FUNC1(tw_dev->host, TW_DRIVER, 0xd, "PCI Abort: clearing");
		FUNC4(TW_CONTROL_CLEAR_PCI_ABORT, FUNC0(tw_dev));
		FUNC2(tw_dev->tw_pci_dev, PCI_STATUS, TW_PCI_CLEAR_PCI_ABORT);
	}

	if (status_reg_value & TW_STATUS_QUEUE_ERROR) {
		if (((tw_dev->tw_pci_dev->device != PCI_DEVICE_ID_3WARE_9650SE) &&
		     (tw_dev->tw_pci_dev->device != PCI_DEVICE_ID_3WARE_9690SA)) ||
		    (!FUNC3(TW_IN_RESET, &tw_dev->flags)))
			FUNC1(tw_dev->host, TW_DRIVER, 0xe, "Controller Queue Error: clearing");
		FUNC4(TW_CONTROL_CLEAR_QUEUE_ERROR, FUNC0(tw_dev));
	}

	if (status_reg_value & TW_STATUS_MICROCONTROLLER_ERROR) {
		if (tw_dev->reset_print == 0) {
			FUNC1(tw_dev->host, TW_DRIVER, 0x10, "Microcontroller Error: clearing");
			tw_dev->reset_print = 1;
		}
		goto out;
	}
	retval = 0;
out:
	return retval;
}