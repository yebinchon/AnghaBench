
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_cq {int wait; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void c2_cq_put(struct c2_cq *cq)
{
 if (atomic_dec_and_test(&cq->refcount))
  wake_up(&cq->wait);
}
