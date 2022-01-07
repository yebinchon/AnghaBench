
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; } ;
struct ocrdma_qp {TYPE_1__ sq; } ;
struct ocrdma_cqe {int dummy; } ;
struct ib_wc {int dummy; } ;


 int ocrdma_hwq_inc_tail (TYPE_1__*) ;
 int ocrdma_update_err_cqe (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ;
 int ocrdma_update_wc (struct ocrdma_qp*,struct ib_wc*,int ) ;

__attribute__((used)) static int ocrdma_update_err_scqe(struct ib_wc *ibwc, struct ocrdma_cqe *cqe,
      struct ocrdma_qp *qp, int status)
{
 ocrdma_update_wc(qp, ibwc, qp->sq.tail);
 ocrdma_hwq_inc_tail(&qp->sq);

 return ocrdma_update_err_cqe(ibwc, cqe, qp, status);
}
