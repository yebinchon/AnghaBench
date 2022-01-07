
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int list; void* aidaw; void* aob; } ;
struct aob_rq_header {scalar_t__ data; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ __scm_alloc_rq_cluster (struct scm_request*) ;
 int __scm_free_rq (struct scm_request*) ;
 scalar_t__ get_zeroed_page (int ) ;
 int inactive_requests ;
 struct aob_rq_header* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int __scm_alloc_rq(void)
{
 struct aob_rq_header *aobrq;
 struct scm_request *scmrq;

 aobrq = kzalloc(sizeof(*aobrq) + sizeof(*scmrq), GFP_KERNEL);
 if (!aobrq)
  return -ENOMEM;

 scmrq = (void *) aobrq->data;
 scmrq->aidaw = (void *) get_zeroed_page(GFP_DMA);
 scmrq->aob = (void *) get_zeroed_page(GFP_DMA);
 if (!scmrq->aob || !scmrq->aidaw) {
  __scm_free_rq(scmrq);
  return -ENOMEM;
 }

 if (__scm_alloc_rq_cluster(scmrq)) {
  __scm_free_rq(scmrq);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&scmrq->list);
 spin_lock_irq(&list_lock);
 list_add(&scmrq->list, &inactive_requests);
 spin_unlock_irq(&list_lock);

 return 0;
}
