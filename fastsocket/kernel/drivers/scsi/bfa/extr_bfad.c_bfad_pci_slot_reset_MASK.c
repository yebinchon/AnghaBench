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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct bfad_s {int /*<<< orphan*/  bfad_flags; int /*<<< orphan*/  pcidev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct bfad_s* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct bfad_s*) ; 

__attribute__((used)) static pci_ers_result_t
FUNC13(struct pci_dev *pdev)
{
	struct bfad_s *bfad = FUNC6(pdev);
	u8 byte;

	FUNC1(KERN_ERR, &pdev->dev,
		   "bfad_pci_slot_reset flags: 0x%x\n", bfad->bfad_flags);

	if (FUNC4(pdev)) {
		FUNC1(KERN_ERR, &pdev->dev, "Cannot re-enable "
			   "PCI device after reset.\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	FUNC8(pdev);

	/*
	 * Read some byte (e.g. DMA max. payload size which can't
	 * be 0xff any time) to make sure - we did not hit another PCI error
	 * in the middle of recovery. If we did, then declare permanent failure.
	 */
	FUNC7(pdev, 0x68, &byte);
	if (byte == 0xff) {
		FUNC1(KERN_ERR, &pdev->dev,
			   "slot_reset failed ... got another PCI error !\n");
		goto out_disable_device;
	}

	FUNC9(pdev);
	FUNC11(pdev);

	if (FUNC10(bfad->pcidev, FUNC0(64)) != 0)
		if (FUNC10(bfad->pcidev, FUNC0(32)) != 0)
			goto out_disable_device;

	FUNC2(pdev);

	if (FUNC12(bfad) == -1)
		goto out_disable_device;

	FUNC5(pdev);
	FUNC1(KERN_WARNING, &pdev->dev,
		   "slot_reset completed  flags: 0x%x!\n", bfad->bfad_flags);

	return PCI_ERS_RESULT_RECOVERED;

out_disable_device:
	FUNC3(pdev);
	return PCI_ERS_RESULT_DISCONNECT;
}