
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numRiocb; int numCiocb; } ;
struct TYPE_5__ {TYPE_1__ sli3; } ;
struct lpfc_sli_ring {int iotag_max; int num_mask; TYPE_3__* prt; TYPE_2__ sli; } ;
struct lpfc_sli {size_t fcp_ring; size_t extra_ring; struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {int cfg_multi_ring_type; int cfg_multi_ring_rctl; struct lpfc_sli sli; } ;
struct TYPE_6__ {int * lpfc_sli_rcv_unsol_event; int type; int rctl; scalar_t__ profile; } ;


 scalar_t__ SLI2_IOCB_CMD_R1XTRA_ENTRIES ;
 scalar_t__ SLI2_IOCB_CMD_R3XTRA_ENTRIES ;
 scalar_t__ SLI2_IOCB_RSP_R1XTRA_ENTRIES ;
 scalar_t__ SLI2_IOCB_RSP_R3XTRA_ENTRIES ;

__attribute__((used)) static int
lpfc_extra_ring_setup( struct lpfc_hba *phba)
{
 struct lpfc_sli *psli;
 struct lpfc_sli_ring *pring;

 psli = &phba->sli;




 pring = &psli->ring[psli->fcp_ring];
 pring->sli.sli3.numCiocb -= SLI2_IOCB_CMD_R1XTRA_ENTRIES;
 pring->sli.sli3.numRiocb -= SLI2_IOCB_RSP_R1XTRA_ENTRIES;
 pring->sli.sli3.numCiocb -= SLI2_IOCB_CMD_R3XTRA_ENTRIES;
 pring->sli.sli3.numRiocb -= SLI2_IOCB_RSP_R3XTRA_ENTRIES;


 pring = &psli->ring[psli->extra_ring];

 pring->sli.sli3.numCiocb += SLI2_IOCB_CMD_R1XTRA_ENTRIES;
 pring->sli.sli3.numRiocb += SLI2_IOCB_RSP_R1XTRA_ENTRIES;
 pring->sli.sli3.numCiocb += SLI2_IOCB_CMD_R3XTRA_ENTRIES;
 pring->sli.sli3.numRiocb += SLI2_IOCB_RSP_R3XTRA_ENTRIES;


 pring->iotag_max = 4096;
 pring->num_mask = 1;
 pring->prt[0].profile = 0;
 pring->prt[0].rctl = phba->cfg_multi_ring_rctl;
 pring->prt[0].type = phba->cfg_multi_ring_type;
 pring->prt[0].lpfc_sli_rcv_unsol_event = ((void*)0);
 return 0;
}
