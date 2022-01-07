
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int * q2_vbase; } ;
struct nes_qp {TYPE_1__ hwqp; } ;


 int BAD_FRAME_OFFSET ;
 int NES_AEQE_Q2_DATA_WRITTEN ;
 int be16_to_cpu (int ) ;
 scalar_t__ locate_mpa (int *,int) ;

__attribute__((used)) static u32 iwarp_opcode(struct nes_qp *nesqp, u32 aeq_info)
{
 u8 *pkt;
 u16 *mpa;
 u32 opcode = 0xffffffff;

 if (aeq_info & NES_AEQE_Q2_DATA_WRITTEN) {
  pkt = nesqp->hwqp.q2_vbase + BAD_FRAME_OFFSET;
  mpa = (u16 *)locate_mpa(pkt, aeq_info);
  opcode = be16_to_cpu(mpa[1]) & 0xf;
 }

 return opcode;
}
