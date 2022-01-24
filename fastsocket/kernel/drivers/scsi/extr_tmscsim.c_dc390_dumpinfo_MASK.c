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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct dc390_srb {int /*<<< orphan*/  SRBStatus; int /*<<< orphan*/  AdaptStatus; int /*<<< orphan*/  ScsiPhase; int /*<<< orphan*/  SRBState; int /*<<< orphan*/  SGToBeXferLen; int /*<<< orphan*/  TotalXferredLen; } ;
struct dc390_dcb {struct dc390_srb* pActiveSRB; } ;
struct dc390_acb {struct pci_dev* pdev; struct dc390_dcb* pActiveDCB; } ;

/* Variables and functions */
 int /*<<< orphan*/  CtcReg_High ; 
 int /*<<< orphan*/  CtcReg_Low ; 
 int /*<<< orphan*/  CtcReg_Mid ; 
 int /*<<< orphan*/  CtrlReg1 ; 
 int /*<<< orphan*/  CtrlReg2 ; 
 int /*<<< orphan*/  CtrlReg3 ; 
 int /*<<< orphan*/  CtrlReg4 ; 
 int /*<<< orphan*/  Current_Fifo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_Cmd ; 
 int /*<<< orphan*/  DMA_ScsiBusCtrl ; 
 int /*<<< orphan*/  DMA_Status ; 
 int /*<<< orphan*/  DMA_Wk_AddrCntr ; 
 int /*<<< orphan*/  DMA_Wk_ByteCntr ; 
 int /*<<< orphan*/  DMA_XferAddr ; 
 int /*<<< orphan*/  DMA_XferCnt ; 
 int EN_INT_ON_PCI_ABORT ; 
 int /*<<< orphan*/  INT_Status ; 
 int /*<<< orphan*/  Intern_State ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int /*<<< orphan*/  ScsiCmd ; 
 int /*<<< orphan*/  ScsiFifo ; 
 int /*<<< orphan*/  Scsi_Status ; 
 int WRT_ERASE_DMA_STAT ; 
 int /*<<< orphan*/  dc390_laststatus ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5 (struct dc390_acb* pACB, struct dc390_dcb* pDCB, struct dc390_srb* pSRB)
{
    struct pci_dev *pdev;
    u16 pstat;

    if (!pDCB) pDCB = pACB->pActiveDCB;
    if (!pSRB && pDCB) pSRB = pDCB->pActiveSRB;

    if (pSRB) 
    {
	FUNC4 ("DC390: SRB: Xferred %08lx, Remain %08lx, State %08x, Phase %02x\n",
		pSRB->TotalXferredLen, pSRB->SGToBeXferLen, pSRB->SRBState,
		pSRB->ScsiPhase);
	FUNC4 ("DC390: AdpaterStatus: %02x, SRB Status %02x\n", pSRB->AdaptStatus, pSRB->SRBStatus);
    }
    FUNC4 ("DC390: Status of last IRQ (DMA/SC/Int/IRQ): %08x\n", dc390_laststatus);
    FUNC4 ("DC390: Register dump: SCSI block:\n");
    FUNC4 ("DC390: XferCnt  Cmd Stat IntS IRQS FFIS Ctl1 Ctl2 Ctl3 Ctl4\n");
    FUNC4 ("DC390:  %06x   %02x   %02x   %02x",
	    FUNC1(CtcReg_Low) + (FUNC1(CtcReg_Mid) << 8) + (FUNC1(CtcReg_High) << 16),
	    FUNC1(ScsiCmd), FUNC1(Scsi_Status), FUNC1(Intern_State));
    FUNC4 ("   %02x   %02x   %02x   %02x   %02x   %02x\n",
	    FUNC1(INT_Status), FUNC1(Current_Fifo), FUNC1(CtrlReg1),
	    FUNC1(CtrlReg2), FUNC1(CtrlReg3), FUNC1(CtrlReg4));
    FUNC2 (DMA_ScsiBusCtrl, WRT_ERASE_DMA_STAT | EN_INT_ON_PCI_ABORT);
    if (FUNC1(Current_Fifo) & 0x1f)
      {
	FUNC4 ("DC390: FIFO:");
	while (FUNC1(Current_Fifo) & 0x1f) FUNC4 (" %02x", FUNC1(ScsiFifo));
	FUNC4 ("\n");
      }
    FUNC4 ("DC390: Register dump: DMA engine:\n");
    FUNC4 ("DC390: Cmd   STrCnt    SBusA    WrkBC    WrkAC Stat SBusCtrl\n");
    FUNC4 ("DC390:  %02x %08x %08x %08x %08x   %02x %08x\n",
	    FUNC1(DMA_Cmd), FUNC0(DMA_XferCnt), FUNC0(DMA_XferAddr),
	    FUNC0(DMA_Wk_ByteCntr), FUNC0(DMA_Wk_AddrCntr),
	    FUNC1(DMA_Status), FUNC0(DMA_ScsiBusCtrl));
    FUNC2 (DMA_ScsiBusCtrl, EN_INT_ON_PCI_ABORT);

    pdev = pACB->pdev;
    FUNC3(pdev, PCI_STATUS, &pstat);
    FUNC4 ("DC390: Register dump: PCI Status: %04x\n", pstat);
    FUNC4 ("DC390: In case of driver trouble read Documentation/scsi/tmscsim.txt\n");
}