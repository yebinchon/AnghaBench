
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {size_t id; } ;
struct ocrdma_dev {int ** qp_tbl; } ;



__attribute__((used)) static void ocrdma_del_qpn_map(struct ocrdma_dev *dev, struct ocrdma_qp *qp)
{
 dev->qp_tbl[qp->id] = ((void*)0);
}
