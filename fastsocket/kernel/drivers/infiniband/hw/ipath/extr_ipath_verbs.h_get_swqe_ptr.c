
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_swqe {int dummy; } ;
struct ipath_sge {int dummy; } ;
struct ipath_qp {int s_max_sge; scalar_t__ s_wq; } ;



__attribute__((used)) static inline struct ipath_swqe *get_swqe_ptr(struct ipath_qp *qp,
           unsigned n)
{
 return (struct ipath_swqe *)((char *)qp->s_wq +
         (sizeof(struct ipath_swqe) +
          qp->s_max_sge *
          sizeof(struct ipath_sge)) * n);
}
