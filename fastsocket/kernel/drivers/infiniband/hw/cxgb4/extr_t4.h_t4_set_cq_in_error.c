
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_status_page {int qp_err; } ;
struct t4_cq {size_t size; int * queue; } ;



__attribute__((used)) static inline void t4_set_cq_in_error(struct t4_cq *cq)
{
 ((struct t4_status_page *)&cq->queue[cq->size])->qp_err = 1;
}
