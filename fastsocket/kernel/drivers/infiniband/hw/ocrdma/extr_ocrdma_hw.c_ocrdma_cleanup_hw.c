
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int meq; } ;


 int ocrdma_destroy_eq (struct ocrdma_dev*,int *) ;
 int ocrdma_destroy_mq (struct ocrdma_dev*) ;
 int ocrdma_destroy_qp_eqs (struct ocrdma_dev*) ;
 int ocrdma_mbx_delete_ah_tbl (struct ocrdma_dev*) ;

void ocrdma_cleanup_hw(struct ocrdma_dev *dev)
{
 ocrdma_mbx_delete_ah_tbl(dev);


 ocrdma_destroy_qp_eqs(dev);


 ocrdma_destroy_mq(dev);
 ocrdma_destroy_eq(dev, &dev->meq);
}
