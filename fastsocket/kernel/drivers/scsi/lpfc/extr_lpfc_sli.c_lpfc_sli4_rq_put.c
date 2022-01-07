
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_rqe {int dummy; } ;
struct lpfc_register {scalar_t__ word0; } ;
struct lpfc_queue {int host_index; scalar_t__ type; int entry_count; int hba_index; int entry_repost; scalar_t__ db_format; int queue_id; int db_regaddr; int entry_size; TYPE_1__* qe; } ;
struct TYPE_2__ {struct lpfc_rqe* rqe; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ LPFC_DB_LIST_FORMAT ;
 scalar_t__ LPFC_DB_RING_FORMAT ;
 scalar_t__ LPFC_DRQ ;
 scalar_t__ LPFC_HRQ ;
 int bf_set (int ,struct lpfc_register*,int) ;
 int lpfc_rq_db_list_fm_id ;
 int lpfc_rq_db_list_fm_index ;
 int lpfc_rq_db_list_fm_num_posted ;
 int lpfc_rq_db_ring_fm_id ;
 int lpfc_rq_db_ring_fm_num_posted ;
 int lpfc_sli_pcimem_bcopy (struct lpfc_rqe*,struct lpfc_rqe*,int ) ;
 scalar_t__ unlikely (int) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static int
lpfc_sli4_rq_put(struct lpfc_queue *hq, struct lpfc_queue *dq,
   struct lpfc_rqe *hrqe, struct lpfc_rqe *drqe)
{
 struct lpfc_rqe *temp_hrqe;
 struct lpfc_rqe *temp_drqe;
 struct lpfc_register doorbell;
 int put_index;


 if (unlikely(!hq) || unlikely(!dq))
  return -ENOMEM;
 put_index = hq->host_index;
 temp_hrqe = hq->qe[hq->host_index].rqe;
 temp_drqe = dq->qe[dq->host_index].rqe;

 if (hq->type != LPFC_HRQ || dq->type != LPFC_DRQ)
  return -EINVAL;
 if (hq->host_index != dq->host_index)
  return -EINVAL;

 if (((hq->host_index + 1) % hq->entry_count) == hq->hba_index)
  return -EBUSY;
 lpfc_sli_pcimem_bcopy(hrqe, temp_hrqe, hq->entry_size);
 lpfc_sli_pcimem_bcopy(drqe, temp_drqe, dq->entry_size);


 hq->host_index = ((hq->host_index + 1) % hq->entry_count);
 dq->host_index = ((dq->host_index + 1) % dq->entry_count);


 if (!(hq->host_index % hq->entry_repost)) {
  doorbell.word0 = 0;
  if (hq->db_format == LPFC_DB_RING_FORMAT) {
   bf_set(lpfc_rq_db_ring_fm_num_posted, &doorbell,
          hq->entry_repost);
   bf_set(lpfc_rq_db_ring_fm_id, &doorbell, hq->queue_id);
  } else if (hq->db_format == LPFC_DB_LIST_FORMAT) {
   bf_set(lpfc_rq_db_list_fm_num_posted, &doorbell,
          hq->entry_repost);
   bf_set(lpfc_rq_db_list_fm_index, &doorbell,
          hq->host_index);
   bf_set(lpfc_rq_db_list_fm_id, &doorbell, hq->queue_id);
  } else {
   return -EINVAL;
  }
  writel(doorbell.word0, hq->db_regaddr);
 }
 return put_index;
}
