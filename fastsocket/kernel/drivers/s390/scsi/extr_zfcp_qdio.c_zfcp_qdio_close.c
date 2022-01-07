
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_qdio_queue {int first; int count; int sbal; } ;
struct TYPE_4__ {int count; int first; } ;
struct zfcp_qdio {TYPE_2__ resp_q; TYPE_1__* adapter; int req_q_wq; int req_q_lock; struct zfcp_qdio_queue req_q; } ;
struct TYPE_3__ {int ccw_device; int status; } ;


 int QDIO_FLAG_CLEANUP_USING_CLEAR ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int ZFCP_STATUS_ADAPTER_QDIOUP ;
 int atomic_clear_mask (int,int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int qdio_shutdown (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;
 int zfcp_qdio_zero_sbals (int ,int,int) ;

void zfcp_qdio_close(struct zfcp_qdio *qdio)
{
 struct zfcp_qdio_queue *req_q;
 int first, count;

 if (!(atomic_read(&qdio->adapter->status) & ZFCP_STATUS_ADAPTER_QDIOUP))
  return;


 req_q = &qdio->req_q;
 spin_lock_bh(&qdio->req_q_lock);
 atomic_clear_mask(ZFCP_STATUS_ADAPTER_QDIOUP, &qdio->adapter->status);
 spin_unlock_bh(&qdio->req_q_lock);

 wake_up(&qdio->req_q_wq);

 qdio_shutdown(qdio->adapter->ccw_device,
        QDIO_FLAG_CLEANUP_USING_CLEAR);


 count = atomic_read(&req_q->count);
 if (count < QDIO_MAX_BUFFERS_PER_Q) {
  first = (req_q->first + count) % QDIO_MAX_BUFFERS_PER_Q;
  count = QDIO_MAX_BUFFERS_PER_Q - count;
  zfcp_qdio_zero_sbals(req_q->sbal, first, count);
 }
 req_q->first = 0;
 atomic_set(&req_q->count, 0);
 qdio->resp_q.first = 0;
 atomic_set(&qdio->resp_q.count, 0);
}
