
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {size_t id; } ;
struct ocrdma_dev {struct ocrdma_qp** qp_tbl; } ;


 int EINVAL ;
 size_t OCRDMA_MAX_QP ;

__attribute__((used)) static int ocrdma_add_qpn_map(struct ocrdma_dev *dev, struct ocrdma_qp *qp)
{
 int status = -EINVAL;

 if (qp->id < OCRDMA_MAX_QP && dev->qp_tbl[qp->id] == ((void*)0)) {
  dev->qp_tbl[qp->id] = qp;
  status = 0;
 }
 return status;
}
