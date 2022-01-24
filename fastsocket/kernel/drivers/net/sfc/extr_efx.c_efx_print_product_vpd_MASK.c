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
typedef  int /*<<< orphan*/  vpd_data ;
struct pci_dev {int dummy; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct pci_dev* pci_dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PCI_VPD_INFO_FLD_HDR_SIZE ; 
 int /*<<< orphan*/  PCI_VPD_LRDT_RO_DATA ; 
 scalar_t__ PCI_VPD_LRDT_TAG_SIZE ; 
 int SFC_VPD_LEN ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (char*,int,int,char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct efx_nic *efx)
{
	struct pci_dev *dev = efx->pci_dev;
	char vpd_data[SFC_VPD_LEN];
	ssize_t vpd_size;
	int i, j;

	/* Get the vpd data from the device */
	vpd_size = FUNC2(dev, 0, sizeof(vpd_data), vpd_data);
	if (vpd_size <= 0) {
		FUNC0(efx, drv, efx->net_dev, "Unable to read VPD\n");
		return;
	}

	/* Get the Read only section */
	i = FUNC4(vpd_data, 0, vpd_size, PCI_VPD_LRDT_RO_DATA);
	if (i < 0) {
		FUNC0(efx, drv, efx->net_dev, "VPD Read-only not found\n");
		return;
	}

	j = FUNC6(&vpd_data[i]);
	i += PCI_VPD_LRDT_TAG_SIZE;
	if (i + j > vpd_size)
		j = vpd_size - i;

	/* Get the Part number */
	i = FUNC3(vpd_data, i, j, "PN");
	if (i < 0) {
		FUNC0(efx, drv, efx->net_dev, "Part number not found\n");
		return;
	}

	j = FUNC5(&vpd_data[i]);
	i += PCI_VPD_INFO_FLD_HDR_SIZE;
	if (i + j > vpd_size) {
		FUNC0(efx, drv, efx->net_dev, "Incomplete part number\n");
		return;
	}

	FUNC1(efx, drv, efx->net_dev,
		   "Part Number : %.*s\n", j, &vpd_data[i]);
}