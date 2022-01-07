
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carm_request {int sg; scalar_t__ n_elem; int * port; } ;
struct carm_host {scalar_t__ hw_sg_used; unsigned long long msg_alloc; scalar_t__ n_msgs; struct carm_request* req; } ;


 scalar_t__ CARM_MAX_HOST_SG ;
 scalar_t__ CARM_MAX_REQ ;
 scalar_t__ CARM_MAX_REQ_SG ;
 int DPRINTK (char*) ;
 int assert (int) ;
 unsigned int max_queue ;
 int sg_init_table (int ,scalar_t__) ;

__attribute__((used)) static struct carm_request *carm_get_request(struct carm_host *host)
{
 unsigned int i;


 if (host->hw_sg_used >= (CARM_MAX_HOST_SG - CARM_MAX_REQ_SG))
  return ((void*)0);

 for (i = 0; i < max_queue; i++)
  if ((host->msg_alloc & (1ULL << i)) == 0) {
   struct carm_request *crq = &host->req[i];
   crq->port = ((void*)0);
   crq->n_elem = 0;

   host->msg_alloc |= (1ULL << i);
   host->n_msgs++;

   assert(host->n_msgs <= CARM_MAX_REQ);
   sg_init_table(crq->sg, CARM_MAX_REQ_SG);
   return crq;
  }

 DPRINTK("no request available, returning NULL\n");
 return ((void*)0);
}
