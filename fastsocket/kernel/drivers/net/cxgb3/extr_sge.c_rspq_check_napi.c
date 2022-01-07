
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {size_t cidx; int * desc; } ;
struct sge_qset {int napi; struct sge_rspq rspq; } ;


 scalar_t__ is_new_response (int *,struct sge_rspq*) ;
 int napi_is_scheduled (int *) ;
 int napi_schedule (int *) ;

__attribute__((used)) static int rspq_check_napi(struct sge_qset *qs)
{
 struct sge_rspq *q = &qs->rspq;

 if (!napi_is_scheduled(&qs->napi) &&
     is_new_response(&q->desc[q->cidx], q)) {
  napi_schedule(&qs->napi);
  return 1;
 }
 return 0;
}
