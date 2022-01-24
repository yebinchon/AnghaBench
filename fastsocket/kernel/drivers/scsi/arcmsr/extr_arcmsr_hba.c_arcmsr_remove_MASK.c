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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct CommandControlBlock {scalar_t__ startdone; TYPE_1__* pcmd; } ;
struct AdapterControlBlock {struct CommandControlBlock** pccb_pool; int /*<<< orphan*/  ccboutstandingcount; int /*<<< orphan*/  acb_flags; int /*<<< orphan*/  eternal_timer; } ;
struct TYPE_2__ {int result; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACB_F_IOP_INITED ; 
 int /*<<< orphan*/  ACB_F_SCSISTOPADAPTER ; 
 scalar_t__ ARCMSR_CCB_ABORTED ; 
 scalar_t__ ARCMSR_CCB_START ; 
 int ARCMSR_MAX_FREECCB_NUM ; 
 int ARCMSR_MAX_OUTSTANDING_CMD ; 
 int DID_ABORT ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct CommandControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC6 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC7 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC8 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC9 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC10 (struct AdapterControlBlock*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC21 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC22(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC17(pdev);
	struct AdapterControlBlock *acb =
		(struct AdapterControlBlock *) host->hostdata;
	int poll_count = 0;
	FUNC7(acb);
	FUNC21(host);
	FUNC13();
	FUNC12(&acb->eternal_timer);
	FUNC2(acb);
	FUNC9(acb);
	FUNC4(acb);	
	acb->acb_flags |= ACB_F_SCSISTOPADAPTER;
	acb->acb_flags &= ~ACB_F_IOP_INITED;

	for (poll_count = 0; poll_count < ARCMSR_MAX_OUTSTANDING_CMD; poll_count++){
		if (!FUNC11(&acb->ccboutstandingcount))
			break;
		FUNC8(acb);/* FIXME: need spinlock */
		FUNC15(25);
	}

	if (FUNC11(&acb->ccboutstandingcount)) {
		int i;

		FUNC0(acb);
		FUNC3(acb);
		for (i = 0; i < ARCMSR_MAX_FREECCB_NUM; i++) {
			struct CommandControlBlock *ccb = acb->pccb_pool[i];
			if (ccb->startdone == ARCMSR_CCB_START) {
				ccb->startdone = ARCMSR_CCB_ABORTED;
				ccb->pcmd->result = DID_ABORT << 16;
				FUNC1(ccb);
			}
		}
	}
	FUNC14(pdev->irq, acb);
	FUNC5(acb);
	FUNC6(acb);
	FUNC10(acb);
	FUNC18(pdev);
	FUNC20(host);
	FUNC16(pdev);
	FUNC19(pdev, NULL);
}