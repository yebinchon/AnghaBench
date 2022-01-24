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
struct scsi_cmnd {unsigned int sc_data_direction; } ;
struct mscp {int /*<<< orphan*/  data_len; int /*<<< orphan*/  data_address; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_addr; struct scsi_cmnd* SCpnt; } ;
struct hostdata {int /*<<< orphan*/  pdev; struct mscp* cp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PCI_DMA_BIDIRECTIONAL ; 
 unsigned int PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC5(unsigned int i, struct hostdata *ha)
{
	unsigned int pci_dir;
	struct mscp *cpp;
	struct scsi_cmnd *SCpnt;

	cpp = &ha->cp[i];
	SCpnt = cpp->SCpnt;
	pci_dir = SCpnt->sc_data_direction;

	if (FUNC0(cpp->sense_addr))
		FUNC2(ha->pdev, FUNC0(cpp->sense_addr),
					    FUNC0(cpp->sense_len),
					    PCI_DMA_FROMDEVICE);

	if (FUNC3(SCpnt))
		FUNC1(ha->pdev, FUNC4(SCpnt),
					FUNC3(SCpnt), pci_dir);

	if (!FUNC0(cpp->data_len))
		pci_dir = PCI_DMA_BIDIRECTIONAL;

	if (FUNC0(cpp->data_address))
		FUNC2(ha->pdev,
					    FUNC0(cpp->data_address),
					    FUNC0(cpp->data_len), pci_dir);
}