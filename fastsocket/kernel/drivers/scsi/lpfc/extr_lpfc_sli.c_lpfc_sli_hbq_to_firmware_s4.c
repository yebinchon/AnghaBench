
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct lpfc_rqe {void* address_hi; void* address_lo; } ;
struct TYPE_6__ {int dat_rq; int hdr_rq; } ;
struct lpfc_hba {TYPE_4__* hbqs; TYPE_2__ sli4_hba; } ;
struct TYPE_7__ {int list; int phys; } ;
struct TYPE_5__ {int phys; } ;
struct hbq_dmabuf {int tag; TYPE_3__ dbuf; TYPE_1__ hbuf; } ;
struct TYPE_8__ {int hbq_buffer_list; } ;


 int list_add_tail (int *,int *) ;
 int lpfc_sli4_rq_put (int ,int ,struct lpfc_rqe*,struct lpfc_rqe*) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;

__attribute__((used)) static int
lpfc_sli_hbq_to_firmware_s4(struct lpfc_hba *phba, uint32_t hbqno,
       struct hbq_dmabuf *hbq_buf)
{
 int rc;
 struct lpfc_rqe hrqe;
 struct lpfc_rqe drqe;

 hrqe.address_lo = putPaddrLow(hbq_buf->hbuf.phys);
 hrqe.address_hi = putPaddrHigh(hbq_buf->hbuf.phys);
 drqe.address_lo = putPaddrLow(hbq_buf->dbuf.phys);
 drqe.address_hi = putPaddrHigh(hbq_buf->dbuf.phys);
 rc = lpfc_sli4_rq_put(phba->sli4_hba.hdr_rq, phba->sli4_hba.dat_rq,
         &hrqe, &drqe);
 if (rc < 0)
  return rc;
 hbq_buf->tag = rc;
 list_add_tail(&hbq_buf->dbuf.list, &phba->hbqs[hbqno].hbq_buffer_list);
 return 0;
}
