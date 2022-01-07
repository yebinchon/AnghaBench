
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rspidx; scalar_t__ rspringaddr; } ;
struct TYPE_4__ {TYPE_1__ sli3; } ;
struct lpfc_sli_ring {TYPE_2__ sli; } ;
struct lpfc_hba {int iocb_rsp_size; } ;
typedef int IOCB_t ;



__attribute__((used)) static inline IOCB_t *
lpfc_resp_iocb(struct lpfc_hba *phba, struct lpfc_sli_ring *pring)
{
 return (IOCB_t *) (((char *) pring->sli.sli3.rspringaddr) +
      pring->sli.sli3.rspidx * phba->iocb_rsp_size);
}
