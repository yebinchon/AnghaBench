
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_rwqe {int dummy; } ;
struct ipath_rq {int max_sge; TYPE_1__* wq; } ;
struct ib_sge {int dummy; } ;
struct TYPE_2__ {scalar_t__ wq; } ;



__attribute__((used)) static inline struct ipath_rwqe *get_rwqe_ptr(struct ipath_rq *rq,
           unsigned n)
{
 return (struct ipath_rwqe *)
  ((char *) rq->wq->wq +
   (sizeof(struct ipath_rwqe) +
    rq->max_sge * sizeof(struct ib_sge)) * n);
}
