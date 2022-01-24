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
struct pci_dev {int dummy; } ;
struct e752x_pvt {TYPE_1__* dev_info; struct pci_dev* dev_d0f1; } ;
struct TYPE_2__ {scalar_t__ err_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  E752X_BUF_ERRMASK ; 
 int /*<<< orphan*/  E752X_BUF_SMICMD ; 
 int /*<<< orphan*/  E752X_DRAM_ERRMASK ; 
 int /*<<< orphan*/  E752X_DRAM_SMICMD ; 
 int /*<<< orphan*/  E752X_HI_ERRMASK ; 
 int /*<<< orphan*/  E752X_HI_SMICMD ; 
 int /*<<< orphan*/  E752X_SYSBUS_SMICMD ; 
 int /*<<< orphan*/  I3100_NSI_EMASK ; 
 int /*<<< orphan*/  I3100_NSI_SMICMD ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_3100_1_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct e752x_pvt*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct e752x_pvt *pvt)
{
	struct pci_dev *dev;

	dev = pvt->dev_d0f1;
	/* Turn off error disable & SMI in case the BIOS turned it on */
	if (pvt->dev_info->err_dev == PCI_DEVICE_ID_INTEL_3100_1_ERR) {
		FUNC2(dev, I3100_NSI_EMASK, 0);
		FUNC2(dev, I3100_NSI_SMICMD, 0);
	} else {
		FUNC1(dev, E752X_HI_ERRMASK, 0x00);
		FUNC1(dev, E752X_HI_SMICMD, 0x00);
	}

	FUNC0(pvt);

	FUNC3(dev, E752X_SYSBUS_SMICMD, 0x00);
	FUNC1(dev, E752X_BUF_ERRMASK, 0x00);
	FUNC1(dev, E752X_BUF_SMICMD, 0x00);
	FUNC1(dev, E752X_DRAM_ERRMASK, 0x00);
	FUNC1(dev, E752X_DRAM_SMICMD, 0x00);
}