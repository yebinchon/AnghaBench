
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carm_request {unsigned long long tag; scalar_t__ n_elem; } ;
struct carm_host {unsigned long long msg_alloc; scalar_t__ hw_sg_used; int n_msgs; } ;


 int EINVAL ;
 int assert (int) ;
 unsigned long long max_queue ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int carm_put_request(struct carm_host *host, struct carm_request *crq)
{
 assert(crq->tag < max_queue);

 if (unlikely((host->msg_alloc & (1ULL << crq->tag)) == 0))
  return -EINVAL;

 assert(host->hw_sg_used >= crq->n_elem);

 host->msg_alloc &= ~(1ULL << crq->tag);
 host->hw_sg_used -= crq->n_elem;
 host->n_msgs--;

 return 0;
}
