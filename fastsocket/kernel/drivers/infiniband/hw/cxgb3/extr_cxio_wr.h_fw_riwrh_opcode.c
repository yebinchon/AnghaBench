
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_riwrh {int op_seop_flags; } ;
typedef enum t3_wr_opcode { ____Placeholder_t3_wr_opcode } t3_wr_opcode ;


 int G_FW_RIWR_OP (int ) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline enum t3_wr_opcode fw_riwrh_opcode(struct fw_riwrh *wqe)
{
 return G_FW_RIWR_OP(be32_to_cpu(wqe->op_seop_flags));
}
