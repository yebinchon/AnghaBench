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
struct scsi_qla_host {int /*<<< orphan*/  host; scalar_t__ boot_kset; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct scsi_qla_host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ql4xdisablesysfsboot ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct scsi_qla_host *ha;

	/*
	 * If the PCI device is disabled then it means probe_adapter had
	 * failed and resources already cleaned up on probe_adapter exit.
	 */
	if (!FUNC5(pdev))
		return;

	ha = FUNC4(pdev);

	if (FUNC0(ha))
		FUNC11(ha);

	/* destroy iface from sysfs */
	FUNC9(ha);

	if ((!ql4xdisablesysfsboot) && ha->boot_kset)
		FUNC1(ha->boot_kset);

	FUNC8(ha);
	FUNC7(ha);

	FUNC12(ha);
	FUNC14(ha->host);

	FUNC10(ha);

	FUNC13(ha->host);

	FUNC3(pdev);
	FUNC2(pdev);
	FUNC6(pdev, NULL);
}