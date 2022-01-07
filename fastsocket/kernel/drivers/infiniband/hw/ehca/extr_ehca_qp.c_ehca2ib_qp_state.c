
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef enum ehca_qp_state { ____Placeholder_ehca_qp_state } ehca_qp_state ;
 int EINVAL ;
 int IB_QPS_ERR ;
 int IB_QPS_INIT ;
 int IB_QPS_RESET ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QPS_SQD ;
 int IB_QPS_SQE ;
 int ehca_gen_err (char*,int) ;

__attribute__((used)) static inline enum ib_qp_state ehca2ib_qp_state(enum ehca_qp_state
      ehca_qp_state)
{
 switch (ehca_qp_state) {
 case 132:
  return IB_QPS_RESET;
 case 133:
  return IB_QPS_INIT;
 case 131:
  return IB_QPS_RTR;
 case 130:
  return IB_QPS_RTS;
 case 129:
  return IB_QPS_SQD;
 case 128:
  return IB_QPS_SQE;
 case 134:
  return IB_QPS_ERR;
 default:
  ehca_gen_err("invalid ehca_qp_state=%x", ehca_qp_state);
  return -EINVAL;
 }
}
