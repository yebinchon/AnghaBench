
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3_cq_status_page {int cq_err; } ;
struct t3_cq {int size_log2; int * queue; } ;



__attribute__((used)) static inline int cxio_cq_in_error(struct t3_cq *cq)
{
 return ((struct t3_cq_status_page *)
  &cq->queue[1 << cq->size_log2])->cq_err;
}
