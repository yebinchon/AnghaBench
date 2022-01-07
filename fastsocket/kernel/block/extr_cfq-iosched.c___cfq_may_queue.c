
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;


 int ELV_MQUEUE_MAY ;
 int ELV_MQUEUE_MUST ;
 int cfq_cfqq_must_alloc_slice (struct cfq_queue*) ;
 scalar_t__ cfq_cfqq_wait_request (struct cfq_queue*) ;
 int cfq_mark_cfqq_must_alloc_slice (struct cfq_queue*) ;

__attribute__((used)) static inline int __cfq_may_queue(struct cfq_queue *cfqq)
{
 if (cfq_cfqq_wait_request(cfqq) && !cfq_cfqq_must_alloc_slice(cfqq)) {
  cfq_mark_cfqq_must_alloc_slice(cfqq);
  return ELV_MQUEUE_MUST;
 }

 return ELV_MQUEUE_MAY;
}
