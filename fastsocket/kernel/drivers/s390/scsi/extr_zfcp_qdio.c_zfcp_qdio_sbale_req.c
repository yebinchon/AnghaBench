
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_queue_req {int sbal_last; } ;
struct zfcp_qdio {int req_q; } ;
struct qdio_buffer_element {int dummy; } ;


 struct qdio_buffer_element* zfcp_qdio_sbale (int *,int ,int ) ;

struct qdio_buffer_element *zfcp_qdio_sbale_req(struct zfcp_qdio *qdio,
      struct zfcp_queue_req *q_req)
{
 return zfcp_qdio_sbale(&qdio->req_q, q_req->sbal_last, 0);
}
