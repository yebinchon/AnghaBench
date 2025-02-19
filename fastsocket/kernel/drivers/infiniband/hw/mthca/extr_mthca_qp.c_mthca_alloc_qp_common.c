
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_gs; int max; int wqe_shift; void* last; int lock; } ;
struct mthca_qp {int refcount; int sq_policy; int send_wqe_offset; TYPE_2__ rq; TYPE_2__ sq; scalar_t__ resp_depth; scalar_t__ atomic_rd_en; int state; int mutex; int wait; } ;
struct TYPE_3__ {scalar_t__ uobject; } ;
struct mthca_pd {TYPE_1__ ibpd; } ;
struct mthca_next_seg {void* nda_op; void* ee_nds; } ;
struct mthca_dev {int dummy; } ;
struct mthca_data_seg {void* lkey; } ;
struct mthca_cq {int dummy; } ;
typedef enum ib_sig_type { ____Placeholder_ib_sig_type } ib_sig_type ;


 int IB_QPS_RESET ;
 int MTHCA_INVAL_LKEY ;
 void* cpu_to_be32 (int) ;
 void* get_recv_wqe (struct mthca_qp*,int) ;
 void* get_send_wqe (struct mthca_qp*,int) ;
 void* htonl (int) ;
 int init_waitqueue_head (int *) ;
 int mthca_adjust_qp_caps (struct mthca_dev*,struct mthca_pd*,struct mthca_qp*) ;
 int mthca_alloc_memfree (struct mthca_dev*,struct mthca_qp*) ;
 int mthca_alloc_wqe_buf (struct mthca_dev*,struct mthca_pd*,struct mthca_qp*) ;
 int mthca_free_wqe_buf (struct mthca_dev*,struct mthca_qp*) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int mthca_map_memfree (struct mthca_dev*,struct mthca_qp*) ;
 int mthca_unmap_memfree (struct mthca_dev*,struct mthca_qp*) ;
 int mthca_wq_reset (TYPE_2__*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mthca_alloc_qp_common(struct mthca_dev *dev,
     struct mthca_pd *pd,
     struct mthca_cq *send_cq,
     struct mthca_cq *recv_cq,
     enum ib_sig_type send_policy,
     struct mthca_qp *qp)
{
 int ret;
 int i;
 struct mthca_next_seg *next;

 qp->refcount = 1;
 init_waitqueue_head(&qp->wait);
 mutex_init(&qp->mutex);
 qp->state = IB_QPS_RESET;
 qp->atomic_rd_en = 0;
 qp->resp_depth = 0;
 qp->sq_policy = send_policy;
 mthca_wq_reset(&qp->sq);
 mthca_wq_reset(&qp->rq);

 spin_lock_init(&qp->sq.lock);
 spin_lock_init(&qp->rq.lock);

 ret = mthca_map_memfree(dev, qp);
 if (ret)
  return ret;

 ret = mthca_alloc_wqe_buf(dev, pd, qp);
 if (ret) {
  mthca_unmap_memfree(dev, qp);
  return ret;
 }

 mthca_adjust_qp_caps(dev, pd, qp);






 if (pd->ibpd.uobject)
  return 0;

 ret = mthca_alloc_memfree(dev, qp);
 if (ret) {
  mthca_free_wqe_buf(dev, qp);
  mthca_unmap_memfree(dev, qp);
  return ret;
 }

 if (mthca_is_memfree(dev)) {
  struct mthca_data_seg *scatter;
  int size = (sizeof (struct mthca_next_seg) +
       qp->rq.max_gs * sizeof (struct mthca_data_seg)) / 16;

  for (i = 0; i < qp->rq.max; ++i) {
   next = get_recv_wqe(qp, i);
   next->nda_op = cpu_to_be32(((i + 1) & (qp->rq.max - 1)) <<
         qp->rq.wqe_shift);
   next->ee_nds = cpu_to_be32(size);

   for (scatter = (void *) (next + 1);
        (void *) scatter < (void *) next + (1 << qp->rq.wqe_shift);
        ++scatter)
    scatter->lkey = cpu_to_be32(MTHCA_INVAL_LKEY);
  }

  for (i = 0; i < qp->sq.max; ++i) {
   next = get_send_wqe(qp, i);
   next->nda_op = cpu_to_be32((((i + 1) & (qp->sq.max - 1)) <<
          qp->sq.wqe_shift) +
         qp->send_wqe_offset);
  }
 } else {
  for (i = 0; i < qp->rq.max; ++i) {
   next = get_recv_wqe(qp, i);
   next->nda_op = htonl((((i + 1) % qp->rq.max) <<
           qp->rq.wqe_shift) | 1);
  }

 }

 qp->sq.last = get_send_wqe(qp, qp->sq.max - 1);
 qp->rq.last = get_recv_wqe(qp, qp->rq.max - 1);

 return 0;
}
