
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ocrdma_qp_state { ____Placeholder_ocrdma_qp_state } ocrdma_qp_state ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int IB_QPS_ERR ;
 int IB_QPS_INIT ;
 int IB_QPS_RESET ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QPS_SQD ;
 int IB_QPS_SQE ;
enum ib_qp_state get_ibqp_state(enum ocrdma_qp_state qps)
{
 switch (qps) {
 case 133:
  return IB_QPS_RESET;
 case 134:
  return IB_QPS_INIT;
 case 132:
  return IB_QPS_RTR;
 case 131:
  return IB_QPS_RTS;
 case 130:
 case 128:
  return IB_QPS_SQD;
 case 129:
  return IB_QPS_SQE;
 case 135:
  return IB_QPS_ERR;
 };
 return IB_QPS_ERR;
}
