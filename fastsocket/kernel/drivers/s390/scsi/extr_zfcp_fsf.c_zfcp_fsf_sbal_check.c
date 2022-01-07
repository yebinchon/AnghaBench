
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio_queue {int count; } ;
struct zfcp_qdio {TYPE_1__* adapter; struct zfcp_qdio_queue req_q; } ;
struct TYPE_2__ {int status; } ;


 int ZFCP_STATUS_ADAPTER_QDIOUP ;
 int atomic_read (int *) ;

__attribute__((used)) static int zfcp_fsf_sbal_check(struct zfcp_qdio *qdio)
{
 struct zfcp_qdio_queue *req_q = &qdio->req_q;

 if (atomic_read(&req_q->count) ||
     !(atomic_read(&qdio->adapter->status) & ZFCP_STATUS_ADAPTER_QDIOUP))
  return 1;
 return 0;
}
