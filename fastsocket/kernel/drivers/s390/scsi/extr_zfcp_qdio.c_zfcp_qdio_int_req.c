
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio_queue {int count; int sbal; } ;
struct zfcp_qdio {int req_q_wq; TYPE_1__* adapter; struct zfcp_qdio_queue req_q; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int dbf; } ;


 int atomic_add (int,int *) ;
 scalar_t__ unlikely (unsigned int) ;
 int wake_up (int *) ;
 int zfcp_dbf_hba_qdio (int ,unsigned int,int,int,int ,int ,int *) ;
 int zfcp_qdio_account (struct zfcp_qdio*) ;
 int zfcp_qdio_handler_error (struct zfcp_qdio*,char*,unsigned int) ;
 int zfcp_qdio_zero_sbals (int ,int,int) ;

__attribute__((used)) static void zfcp_qdio_int_req(struct ccw_device *cdev, unsigned int qdio_err,
         int queue_no, int first, int count,
         unsigned long parm)
{
 struct zfcp_qdio *qdio = (struct zfcp_qdio *) parm;
 struct zfcp_qdio_queue *queue = &qdio->req_q;

 if (unlikely(qdio_err)) {
  zfcp_dbf_hba_qdio(qdio->adapter->dbf, qdio_err, first,
      count, 0, 0, ((void*)0));
  zfcp_qdio_handler_error(qdio, "qdireq1", qdio_err);
  return;
 }


 zfcp_qdio_zero_sbals(queue->sbal, first, count);

 zfcp_qdio_account(qdio);
 atomic_add(count, &queue->count);
 wake_up(&qdio->req_q_wq);
}
