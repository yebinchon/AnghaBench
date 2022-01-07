
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ cmdidx; scalar_t__ local_getidx; scalar_t__ next_cmdidx; scalar_t__ rspidx; } ;
struct TYPE_6__ {TYPE_2__ sli3; } ;
struct lpfc_sli_ring {scalar_t__ missbufcnt; TYPE_3__ sli; scalar_t__ flag; } ;
struct lpfc_sli {int sli_flag; int num_rings; struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {int link_state; int pcidev; int HCregaddr; TYPE_1__* pport; scalar_t__ link_events; scalar_t__ fc_eventTag; struct lpfc_sli sli; } ;
struct TYPE_4__ {scalar_t__ fc_prevDID; scalar_t__ fc_myDID; int port_state; } ;


 int HC_INITFF ;
 int KERN_INFO ;
 int LOG_SLI ;
 int LPFC_PROCESS_LA ;
 int LPFC_SLI_ACTIVE ;
 int LPFC_WARM_START ;
 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int) ;
 int mdelay (int) ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_word (int ,int ,int) ;
 int readl (int ) ;
 int writel (int ,int ) ;

int
lpfc_sli_brdreset(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli;
 struct lpfc_sli_ring *pring;
 uint16_t cfg_value;
 int i;

 psli = &phba->sli;


 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "0325 Reset HBA Data: x%x x%x\n",
   phba->pport->port_state, psli->sli_flag);


 phba->fc_eventTag = 0;
 phba->link_events = 0;
 phba->pport->fc_myDID = 0;
 phba->pport->fc_prevDID = 0;


 pci_read_config_word(phba->pcidev, PCI_COMMAND, &cfg_value);
 pci_write_config_word(phba->pcidev, PCI_COMMAND,
         (cfg_value &
          ~(PCI_COMMAND_PARITY | PCI_COMMAND_SERR)));

 psli->sli_flag &= ~(LPFC_SLI_ACTIVE | LPFC_PROCESS_LA);


 writel(HC_INITFF, phba->HCregaddr);
 mdelay(1);
 readl(phba->HCregaddr);
 writel(0, phba->HCregaddr);
 readl(phba->HCregaddr);


 pci_write_config_word(phba->pcidev, PCI_COMMAND, cfg_value);


 for (i = 0; i < psli->num_rings; i++) {
  pring = &psli->ring[i];
  pring->flag = 0;
  pring->sli.sli3.rspidx = 0;
  pring->sli.sli3.next_cmdidx = 0;
  pring->sli.sli3.local_getidx = 0;
  pring->sli.sli3.cmdidx = 0;
  pring->missbufcnt = 0;
 }

 phba->link_state = LPFC_WARM_START;
 return 0;
}
