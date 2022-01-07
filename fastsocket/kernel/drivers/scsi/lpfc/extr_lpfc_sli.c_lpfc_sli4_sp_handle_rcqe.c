
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_rcqe {int dummy; } ;
struct lpfc_queue {scalar_t__ queue_id; int RQ_no_posted_buf; int RQ_rcv_buf; int RQ_no_buf_found; int RQ_buf_trunc; } ;
struct TYPE_8__ {int sp_queue_event; struct lpfc_queue* dat_rq; struct lpfc_queue* hdr_rq; } ;
struct lpfc_hba {int hbalock; int hba_flag; TYPE_4__ sli4_hba; TYPE_1__* hbqs; } ;
struct TYPE_6__ {int rcqe_cmpl; } ;
struct TYPE_7__ {int list; TYPE_2__ cqe; } ;
struct hbq_dmabuf {TYPE_3__ cq_event; } ;
struct TYPE_5__ {int hbq_buffer_list; } ;


 scalar_t__ CQE_CODE_RECEIVE_V1 ;




 int HBA_POST_RECEIVE_BUFFER ;
 int HBA_SP_QUEUE_EVT ;
 int KERN_ERR ;
 int LOG_SLI ;
 scalar_t__ bf_get (int ,struct lpfc_rcqe*) ;
 int list_add_tail (int *,int *) ;
 int lpfc_cqe_code ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_rcqe_rq_id ;
 int lpfc_rcqe_rq_id_v1 ;
 int lpfc_rcqe_status ;
 int lpfc_sli4_rq_release (struct lpfc_queue*,struct lpfc_queue*) ;
 struct hbq_dmabuf* lpfc_sli_hbqbuf_get (int *) ;
 int memcpy (int *,struct lpfc_rcqe*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
lpfc_sli4_sp_handle_rcqe(struct lpfc_hba *phba, struct lpfc_rcqe *rcqe)
{
 bool workposted = 0;
 struct lpfc_queue *hrq = phba->sli4_hba.hdr_rq;
 struct lpfc_queue *drq = phba->sli4_hba.dat_rq;
 struct hbq_dmabuf *dma_buf;
 uint32_t status, rq_id;
 unsigned long iflags;


 if (unlikely(!hrq) || unlikely(!drq))
  return workposted;

 if (bf_get(lpfc_cqe_code, rcqe) == CQE_CODE_RECEIVE_V1)
  rq_id = bf_get(lpfc_rcqe_rq_id_v1, rcqe);
 else
  rq_id = bf_get(lpfc_rcqe_rq_id, rcqe);
 if (rq_id != hrq->queue_id)
  goto out;

 status = bf_get(lpfc_rcqe_status, rcqe);
 switch (status) {
 case 129:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2537 Receive Frame Truncated!!\n");
  hrq->RQ_buf_trunc++;
 case 128:
  lpfc_sli4_rq_release(hrq, drq);
  spin_lock_irqsave(&phba->hbalock, iflags);
  dma_buf = lpfc_sli_hbqbuf_get(&phba->hbqs[0].hbq_buffer_list);
  if (!dma_buf) {
   hrq->RQ_no_buf_found++;
   spin_unlock_irqrestore(&phba->hbalock, iflags);
   goto out;
  }
  hrq->RQ_rcv_buf++;
  memcpy(&dma_buf->cq_event.cqe.rcqe_cmpl, rcqe, sizeof(*rcqe));

  list_add_tail(&dma_buf->cq_event.list,
         &phba->sli4_hba.sp_queue_event);

  phba->hba_flag |= HBA_SP_QUEUE_EVT;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  workposted = 1;
  break;
 case 130:
 case 131:
  hrq->RQ_no_posted_buf++;

  spin_lock_irqsave(&phba->hbalock, iflags);
  phba->hba_flag |= HBA_POST_RECEIVE_BUFFER;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  workposted = 1;
  break;
 }
out:
 return workposted;
}
