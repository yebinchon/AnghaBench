
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_queue_req {int sbal_limit; int sbal_first; } ;
struct TYPE_2__ {int count; } ;
struct zfcp_qdio {TYPE_1__ req_q; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int atomic_read (int *) ;
 int min (int,int) ;

__attribute__((used)) static inline void zfcp_qdio_sbal_limit(struct zfcp_qdio *qdio,
     struct zfcp_queue_req *q_req, int max_sbals)
{
 int count = atomic_read(&qdio->req_q.count);
 count = min(count, max_sbals);
 q_req->sbal_limit = (q_req->sbal_first + count - 1)
     % QDIO_MAX_BUFFERS_PER_Q;
}
