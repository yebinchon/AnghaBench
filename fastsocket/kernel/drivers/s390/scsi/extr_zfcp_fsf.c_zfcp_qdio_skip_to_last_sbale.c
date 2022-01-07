
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_queue_req {scalar_t__ sbale_curr; } ;
struct zfcp_qdio {scalar_t__ max_sbale_per_sbal; } ;



__attribute__((used)) static inline
void zfcp_qdio_skip_to_last_sbale(struct zfcp_qdio *qdio,
      struct zfcp_queue_req *q_req)
{
 q_req->sbale_curr = qdio->max_sbale_per_sbal - 1;
}
