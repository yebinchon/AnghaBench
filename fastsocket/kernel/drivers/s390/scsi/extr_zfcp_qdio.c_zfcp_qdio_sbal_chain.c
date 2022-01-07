
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zfcp_queue_req {scalar_t__ sbal_number; scalar_t__ sbale_curr; int sbal_last; int sbal_limit; } ;
struct zfcp_qdio {int dummy; } ;
struct qdio_buffer_element {int sflags; int eflags; } ;


 int BUG_ON (int) ;
 scalar_t__ FSF_MAX_SBALS_PER_REQ ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_MORE_SBALS ;
 struct qdio_buffer_element* zfcp_qdio_sbale_curr (struct zfcp_qdio*,struct zfcp_queue_req*) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,struct zfcp_queue_req*) ;

__attribute__((used)) static struct qdio_buffer_element *
zfcp_qdio_sbal_chain(struct zfcp_qdio *qdio, struct zfcp_queue_req *q_req,
       u8 sbtype)
{
 struct qdio_buffer_element *sbale;


 sbale = zfcp_qdio_sbale_curr(qdio, q_req);
 sbale->eflags |= SBAL_EFLAGS_LAST_ENTRY;


 if (q_req->sbal_last == q_req->sbal_limit)
  return ((void*)0);


 sbale = zfcp_qdio_sbale_req(qdio, q_req);
 sbale->sflags |= SBAL_SFLAGS0_MORE_SBALS;


 q_req->sbal_last++;
 q_req->sbal_last %= QDIO_MAX_BUFFERS_PER_Q;


 q_req->sbal_number++;
 BUG_ON(q_req->sbal_number > FSF_MAX_SBALS_PER_REQ);


 q_req->sbale_curr = 0;


 sbale = zfcp_qdio_sbale_curr(qdio, q_req);
 sbale->sflags |= sbtype;

 return sbale;
}
