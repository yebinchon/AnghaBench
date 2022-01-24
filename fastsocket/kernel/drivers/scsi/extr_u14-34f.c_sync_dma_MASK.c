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
struct scsi_cmnd {unsigned int sc_data_direction; } ;
struct mscp {int /*<<< orphan*/  data_len; int /*<<< orphan*/  data_address; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_addr; struct scsi_cmnd* SCpnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; struct mscp* cp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (unsigned int) ; 
 unsigned int PCI_DMA_BIDIRECTIONAL ; 
 unsigned int PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC6(unsigned int i, unsigned int j) {
   unsigned int pci_dir;
   struct mscp *cpp;
   struct scsi_cmnd *SCpnt;

   cpp = &FUNC1(j)->cp[i]; SCpnt = cpp->SCpnt;
   pci_dir = SCpnt->sc_data_direction;

   if (FUNC0(cpp->sense_addr))
      FUNC3(FUNC1(j)->pdev, FUNC0(cpp->sense_addr),
                          FUNC0(cpp->sense_len), PCI_DMA_FROMDEVICE);

   if (FUNC4(SCpnt))
	   FUNC2(FUNC1(j)->pdev, FUNC5(SCpnt),
				   FUNC4(SCpnt), pci_dir);

   if (!FUNC0(cpp->data_len)) pci_dir = PCI_DMA_BIDIRECTIONAL;

   if (FUNC0(cpp->data_address))
      FUNC3(FUNC1(j)->pdev, FUNC0(cpp->data_address),
                       FUNC0(cpp->data_len), pci_dir);
}