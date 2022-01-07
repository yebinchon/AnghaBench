
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_output_q {scalar_t__ use_cq; int * aobs; } ;


 int kfree (int *) ;

void qdio_disable_async_operation(struct qdio_output_q *q)
{
 kfree(q->aobs);
 q->aobs = ((void*)0);
 q->use_cq = 0;
}
