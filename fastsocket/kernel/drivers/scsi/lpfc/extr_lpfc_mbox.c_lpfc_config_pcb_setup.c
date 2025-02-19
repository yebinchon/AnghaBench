
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_8__ {scalar_t__ numCiocb; scalar_t__ numRiocb; int * rspringaddr; int * cmdringaddr; int sizeRiocb; int sizeCiocb; } ;
struct TYPE_9__ {TYPE_3__ sli3; } ;
struct lpfc_sli_ring {TYPE_4__ sli; } ;
struct lpfc_sli {int num_rings; struct lpfc_sli_ring* ring; } ;
struct TYPE_6__ {scalar_t__ phys; scalar_t__ virt; } ;
struct lpfc_hba {int sli_rev; TYPE_1__ slim2p; int * IOCBs; TYPE_5__* pcb; struct lpfc_sli sli; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_10__ {int maxRing; TYPE_2__* rdsc; } ;
struct TYPE_7__ {scalar_t__ cmdEntries; scalar_t__ rspEntries; void* rspAddrLow; void* rspAddrHigh; void* cmdAddrLow; void* cmdAddrHigh; } ;
typedef TYPE_5__ PCB_t ;


 int SLI2_IOCB_CMD_SIZE ;
 int SLI2_IOCB_RSP_SIZE ;
 int SLI3_IOCB_CMD_SIZE ;
 int SLI3_IOCB_RSP_SIZE ;
 void* putPaddrHigh (scalar_t__) ;
 void* putPaddrLow (scalar_t__) ;

__attribute__((used)) static void
lpfc_config_pcb_setup(struct lpfc_hba * phba)
{
 struct lpfc_sli *psli = &phba->sli;
 struct lpfc_sli_ring *pring;
 PCB_t *pcbp = phba->pcb;
 dma_addr_t pdma_addr;
 uint32_t offset;
 uint32_t iocbCnt = 0;
 int i;

 pcbp->maxRing = (psli->num_rings - 1);

 for (i = 0; i < psli->num_rings; i++) {
  pring = &psli->ring[i];

  pring->sli.sli3.sizeCiocb =
   phba->sli_rev == 3 ? SLI3_IOCB_CMD_SIZE :
       SLI2_IOCB_CMD_SIZE;
  pring->sli.sli3.sizeRiocb =
   phba->sli_rev == 3 ? SLI3_IOCB_RSP_SIZE :
       SLI2_IOCB_RSP_SIZE;


  if ((pring->sli.sli3.numCiocb == 0) ||
   (pring->sli.sli3.numRiocb == 0)) {
   pcbp->rdsc[i].cmdEntries = 0;
   pcbp->rdsc[i].rspEntries = 0;
   pcbp->rdsc[i].cmdAddrHigh = 0;
   pcbp->rdsc[i].rspAddrHigh = 0;
   pcbp->rdsc[i].cmdAddrLow = 0;
   pcbp->rdsc[i].rspAddrLow = 0;
   pring->sli.sli3.cmdringaddr = ((void*)0);
   pring->sli.sli3.rspringaddr = ((void*)0);
   continue;
  }

  pring->sli.sli3.cmdringaddr = (void *)&phba->IOCBs[iocbCnt];
  pcbp->rdsc[i].cmdEntries = pring->sli.sli3.numCiocb;

  offset = (uint8_t *) &phba->IOCBs[iocbCnt] -
    (uint8_t *) phba->slim2p.virt;
  pdma_addr = phba->slim2p.phys + offset;
  pcbp->rdsc[i].cmdAddrHigh = putPaddrHigh(pdma_addr);
  pcbp->rdsc[i].cmdAddrLow = putPaddrLow(pdma_addr);
  iocbCnt += pring->sli.sli3.numCiocb;


  pring->sli.sli3.rspringaddr = (void *) &phba->IOCBs[iocbCnt];

  pcbp->rdsc[i].rspEntries = pring->sli.sli3.numRiocb;
  offset = (uint8_t *)&phba->IOCBs[iocbCnt] -
    (uint8_t *)phba->slim2p.virt;
  pdma_addr = phba->slim2p.phys + offset;
  pcbp->rdsc[i].rspAddrHigh = putPaddrHigh(pdma_addr);
  pcbp->rdsc[i].rspAddrLow = putPaddrLow(pdma_addr);
  iocbCnt += pring->sli.sli3.numRiocb;
 }
}
