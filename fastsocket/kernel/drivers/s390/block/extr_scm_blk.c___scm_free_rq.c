
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {scalar_t__ aidaw; scalar_t__ aob; } ;
struct aob_rq_header {int dummy; } ;


 int __scm_free_rq_cluster (struct scm_request*) ;
 int free_page (unsigned long) ;
 int kfree (struct aob_rq_header*) ;
 struct aob_rq_header* to_aobrq (struct scm_request*) ;

__attribute__((used)) static void __scm_free_rq(struct scm_request *scmrq)
{
 struct aob_rq_header *aobrq = to_aobrq(scmrq);

 free_page((unsigned long) scmrq->aob);
 free_page((unsigned long) scmrq->aidaw);
 __scm_free_rq_cluster(scmrq);
 kfree(aobrq);
}
