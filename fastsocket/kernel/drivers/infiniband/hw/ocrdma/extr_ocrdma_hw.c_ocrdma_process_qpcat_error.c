
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {int dummy; } ;
struct ocrdma_dev {int dummy; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int BUG () ;
 int IB_QPS_ERR ;
 int ocrdma_qp_state_machine (struct ocrdma_qp*,int,int*) ;

__attribute__((used)) static void ocrdma_process_qpcat_error(struct ocrdma_dev *dev,
           struct ocrdma_qp *qp)
{
 enum ib_qp_state new_ib_qps = IB_QPS_ERR;
 enum ib_qp_state old_ib_qps;

 if (qp == ((void*)0))
  BUG();
 ocrdma_qp_state_machine(qp, new_ib_qps, &old_ib_qps);
}
