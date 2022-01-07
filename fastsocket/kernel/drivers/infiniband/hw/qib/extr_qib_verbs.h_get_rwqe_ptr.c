
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_rwqe {int dummy; } ;
struct qib_rq {int max_sge; TYPE_1__* wq; } ;
struct ib_sge {int dummy; } ;
struct TYPE_2__ {scalar_t__ wq; } ;



__attribute__((used)) static inline struct qib_rwqe *get_rwqe_ptr(struct qib_rq *rq, unsigned n)
{
 return (struct qib_rwqe *)
  ((char *) rq->wq->wq +
   (sizeof(struct qib_rwqe) +
    rq->max_sge * sizeof(struct ib_sge)) * n);
}
