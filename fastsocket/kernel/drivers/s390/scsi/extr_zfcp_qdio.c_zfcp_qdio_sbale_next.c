
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zfcp_queue_req {int sbale_curr; } ;
struct zfcp_qdio {int max_sbale_per_sbal; } ;
struct qdio_buffer_element {int dummy; } ;


 struct qdio_buffer_element* zfcp_qdio_sbal_chain (struct zfcp_qdio*,struct zfcp_queue_req*,int ) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_curr (struct zfcp_qdio*,struct zfcp_queue_req*) ;

__attribute__((used)) static struct qdio_buffer_element *
zfcp_qdio_sbale_next(struct zfcp_qdio *qdio, struct zfcp_queue_req *q_req,
       u8 sbtype)
{
 if (q_req->sbale_curr == qdio->max_sbale_per_sbal - 1)
  return zfcp_qdio_sbal_chain(qdio, q_req, sbtype);
 q_req->sbale_curr++;
 return zfcp_qdio_sbale_curr(qdio, q_req);
}
