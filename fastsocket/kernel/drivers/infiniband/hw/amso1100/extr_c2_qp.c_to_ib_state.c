
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum c2_qp_state { ____Placeholder_c2_qp_state } c2_qp_state ;
 int IB_QPS_ERR ;
 int IB_QPS_RESET ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QPS_SQD ;
 int IB_QPS_SQE ;

__attribute__((used)) static int to_ib_state(enum c2_qp_state c2_state)
{
 switch (c2_state) {
 case 130:
  return IB_QPS_RESET;
 case 132:
  return IB_QPS_RTR;
 case 129:
  return IB_QPS_RTS;
 case 133:
  return IB_QPS_SQD;
 case 131:
  return IB_QPS_ERR;
 case 128:
  return IB_QPS_SQE;
 default:
  return -1;
 }
}
