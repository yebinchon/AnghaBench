
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_queue_req {int sbal_first; int sbal_number; } ;
struct zfcp_qdio_queue {int first; int count; int sbal; } ;
struct zfcp_qdio {TYPE_1__* adapter; struct zfcp_qdio_queue req_q; } ;
struct TYPE_2__ {int ccw_device; } ;


 unsigned int QDIO_FLAG_SYNC_OUTPUT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int atomic_sub (int,int *) ;
 int do_QDIO (int ,unsigned int,int ,int,int) ;
 scalar_t__ unlikely (int) ;
 int zfcp_qdio_account (struct zfcp_qdio*) ;
 int zfcp_qdio_zero_sbals (int ,int,int) ;

int zfcp_qdio_send(struct zfcp_qdio *qdio, struct zfcp_queue_req *q_req)
{
 struct zfcp_qdio_queue *req_q = &qdio->req_q;
 int first = q_req->sbal_first;
 int count = q_req->sbal_number;
 int retval;
 unsigned int qdio_flags = QDIO_FLAG_SYNC_OUTPUT;

 zfcp_qdio_account(qdio);

 retval = do_QDIO(qdio->adapter->ccw_device, qdio_flags, 0, first,
    count);
 if (unlikely(retval)) {
  zfcp_qdio_zero_sbals(req_q->sbal, first, count);
  return retval;
 }


 atomic_sub(count, &req_q->count);
 req_q->first += count;
 req_q->first %= QDIO_MAX_BUFFERS_PER_Q;
 return 0;
}
