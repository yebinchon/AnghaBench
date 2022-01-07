
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int gsi_qp_created; void* gsi_rqcq; void* gsi_sqcq; } ;
struct ib_qp_init_attr {scalar_t__ qp_type; int recv_cq; int send_cq; } ;


 scalar_t__ IB_QPT_GSI ;
 void* get_ocrdma_cq (int ) ;

__attribute__((used)) static void ocrdma_store_gsi_qp_cq(struct ocrdma_dev *dev,
       struct ib_qp_init_attr *attrs)
{
 if (attrs->qp_type == IB_QPT_GSI) {
  dev->gsi_qp_created = 1;
  dev->gsi_sqcq = get_ocrdma_cq(attrs->send_cq);
  dev->gsi_rqcq = get_ocrdma_cq(attrs->recv_cq);
 }
}
