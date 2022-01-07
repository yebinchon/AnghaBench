
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_QPS_ERR ;
 int IB_QPS_INIT ;
 int IB_QPS_RTS ;
 int IB_QPS_SQD ;
 int IB_QPS_SQE ;

__attribute__((used)) static inline int to_ib_qp_state(int c4iw_qp_state)
{
 switch (c4iw_qp_state) {
 case 130:
  return IB_QPS_INIT;
 case 129:
  return IB_QPS_RTS;
 case 132:
  return IB_QPS_SQD;
 case 128:
  return IB_QPS_SQE;
 case 131:
  return IB_QPS_ERR;
 }
 return IB_QPS_ERR;
}
