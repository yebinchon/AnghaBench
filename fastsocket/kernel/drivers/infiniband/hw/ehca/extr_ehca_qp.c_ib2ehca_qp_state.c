
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef enum ehca_qp_state { ____Placeholder_ehca_qp_state } ehca_qp_state ;


 int EHCA_QPS_ERR ;
 int EHCA_QPS_INIT ;
 int EHCA_QPS_RESET ;
 int EHCA_QPS_RTR ;
 int EHCA_QPS_RTS ;
 int EHCA_QPS_SQD ;
 int EHCA_QPS_SQE ;
 int EINVAL ;







 int ehca_gen_err (char*,int) ;

__attribute__((used)) static inline enum ehca_qp_state ib2ehca_qp_state(enum ib_qp_state ib_qp_state)
{
 switch (ib_qp_state) {
 case 132:
  return EHCA_QPS_RESET;
 case 133:
  return EHCA_QPS_INIT;
 case 131:
  return EHCA_QPS_RTR;
 case 130:
  return EHCA_QPS_RTS;
 case 129:
  return EHCA_QPS_SQD;
 case 128:
  return EHCA_QPS_SQE;
 case 134:
  return EHCA_QPS_ERR;
 default:
  ehca_gen_err("invalid ib_qp_state=%x", ib_qp_state);
  return -EINVAL;
 }
}
