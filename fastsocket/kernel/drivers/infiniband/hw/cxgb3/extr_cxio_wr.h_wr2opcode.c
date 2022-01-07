
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum t3_wr_opcode { ____Placeholder_t3_wr_opcode } t3_wr_opcode ;
typedef enum t3_rdma_opcode { ____Placeholder_t3_rdma_opcode } t3_rdma_opcode ;


 int T3_BIND_MW ;
 int T3_BYPASS ;
 int T3_FAST_REGISTER ;
 int T3_LOCAL_INV ;
 int T3_QP_MOD ;
 int T3_RDMA_INIT ;
 int T3_RDMA_WRITE ;
 int T3_READ_REQ ;
 int T3_SEND ;
__attribute__((used)) static inline enum t3_rdma_opcode wr2opcode(enum t3_wr_opcode wrop)
{
 switch (wrop) {
  case 135: return T3_BYPASS;
  case 129: return T3_SEND;
  case 128: return T3_RDMA_WRITE;
  case 130: return T3_READ_REQ;
  case 132: return T3_LOCAL_INV;
  case 136: return T3_BIND_MW;
  case 133: return T3_RDMA_INIT;
  case 131: return T3_QP_MOD;
  case 134: return T3_FAST_REGISTER;
  default: break;
 }
 return -1;
}
