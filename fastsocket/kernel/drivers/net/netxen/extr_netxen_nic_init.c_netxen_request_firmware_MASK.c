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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct netxen_adapter {size_t fw_type; int /*<<< orphan*/ * fw; struct pci_dev* pdev; } ;

/* Variables and functions */
 size_t NX_FLASH_ROMIMAGE ; 
 size_t NX_UNKNOWN_ROMIMAGE ; 
 int /*<<< orphan*/ * fw_name ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct netxen_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	int rc = 0;

	adapter->fw_type = NX_UNKNOWN_ROMIMAGE;

next:
	FUNC2(adapter);

	if (adapter->fw_type == NX_FLASH_ROMIMAGE) {
		adapter->fw = NULL;
	} else {
		rc = FUNC4(&adapter->fw,
				fw_name[adapter->fw_type], &pdev->dev);
		if (rc != 0)
			goto next;

		rc = FUNC1(adapter);
		if (rc != 0) {
			FUNC3(adapter->fw);
			FUNC0(1);
			goto next;
		}
	}
}