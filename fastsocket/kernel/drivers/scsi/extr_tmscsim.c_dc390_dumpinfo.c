
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct dc390_srb {int SRBStatus; int AdaptStatus; int ScsiPhase; int SRBState; int SGToBeXferLen; int TotalXferredLen; } ;
struct dc390_dcb {struct dc390_srb* pActiveSRB; } ;
struct dc390_acb {struct pci_dev* pdev; struct dc390_dcb* pActiveDCB; } ;


 int CtcReg_High ;
 int CtcReg_Low ;
 int CtcReg_Mid ;
 int CtrlReg1 ;
 int CtrlReg2 ;
 int CtrlReg3 ;
 int CtrlReg4 ;
 int Current_Fifo ;
 int DC390_read32 (int ) ;
 int DC390_read8 (int ) ;
 int DC390_write32 (int ,int) ;
 int DMA_Cmd ;
 int DMA_ScsiBusCtrl ;
 int DMA_Status ;
 int DMA_Wk_AddrCntr ;
 int DMA_Wk_ByteCntr ;
 int DMA_XferAddr ;
 int DMA_XferCnt ;
 int EN_INT_ON_PCI_ABORT ;
 int INT_Status ;
 int Intern_State ;
 int PCI_STATUS ;
 int ScsiCmd ;
 int ScsiFifo ;
 int Scsi_Status ;
 int WRT_ERASE_DMA_STAT ;
 int dc390_laststatus ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int printk (char*,...) ;

__attribute__((used)) static void dc390_dumpinfo (struct dc390_acb* pACB, struct dc390_dcb* pDCB, struct dc390_srb* pSRB)
{
    struct pci_dev *pdev;
    u16 pstat;

    if (!pDCB) pDCB = pACB->pActiveDCB;
    if (!pSRB && pDCB) pSRB = pDCB->pActiveSRB;

    if (pSRB)
    {
 printk ("DC390: SRB: Xferred %08lx, Remain %08lx, State %08x, Phase %02x\n",
  pSRB->TotalXferredLen, pSRB->SGToBeXferLen, pSRB->SRBState,
  pSRB->ScsiPhase);
 printk ("DC390: AdpaterStatus: %02x, SRB Status %02x\n", pSRB->AdaptStatus, pSRB->SRBStatus);
    }
    printk ("DC390: Status of last IRQ (DMA/SC/Int/IRQ): %08x\n", dc390_laststatus);
    printk ("DC390: Register dump: SCSI block:\n");
    printk ("DC390: XferCnt  Cmd Stat IntS IRQS FFIS Ctl1 Ctl2 Ctl3 Ctl4\n");
    printk ("DC390:  %06x   %02x   %02x   %02x",
     DC390_read8(CtcReg_Low) + (DC390_read8(CtcReg_Mid) << 8) + (DC390_read8(CtcReg_High) << 16),
     DC390_read8(ScsiCmd), DC390_read8(Scsi_Status), DC390_read8(Intern_State));
    printk ("   %02x   %02x   %02x   %02x   %02x   %02x\n",
     DC390_read8(INT_Status), DC390_read8(Current_Fifo), DC390_read8(CtrlReg1),
     DC390_read8(CtrlReg2), DC390_read8(CtrlReg3), DC390_read8(CtrlReg4));
    DC390_write32 (DMA_ScsiBusCtrl, WRT_ERASE_DMA_STAT | EN_INT_ON_PCI_ABORT);
    if (DC390_read8(Current_Fifo) & 0x1f)
      {
 printk ("DC390: FIFO:");
 while (DC390_read8(Current_Fifo) & 0x1f) printk (" %02x", DC390_read8(ScsiFifo));
 printk ("\n");
      }
    printk ("DC390: Register dump: DMA engine:\n");
    printk ("DC390: Cmd   STrCnt    SBusA    WrkBC    WrkAC Stat SBusCtrl\n");
    printk ("DC390:  %02x %08x %08x %08x %08x   %02x %08x\n",
     DC390_read8(DMA_Cmd), DC390_read32(DMA_XferCnt), DC390_read32(DMA_XferAddr),
     DC390_read32(DMA_Wk_ByteCntr), DC390_read32(DMA_Wk_AddrCntr),
     DC390_read8(DMA_Status), DC390_read32(DMA_ScsiBusCtrl));
    DC390_write32 (DMA_ScsiBusCtrl, EN_INT_ON_PCI_ABORT);

    pdev = pACB->pdev;
    pci_read_config_word(pdev, PCI_STATUS, &pstat);
    printk ("DC390: Register dump: PCI Status: %04x\n", pstat);
    printk ("DC390: In case of driver trouble read Documentation/scsi/tmscsim.txt\n");
}
