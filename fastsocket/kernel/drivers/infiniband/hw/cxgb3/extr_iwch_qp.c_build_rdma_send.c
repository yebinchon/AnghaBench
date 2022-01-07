
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {void* plen; void* num_sgle; TYPE_2__* sgl; scalar_t__* reserved; void* rem_stag; int rdmaop; } ;
union t3_wr {TYPE_4__ send; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ invalidate_rkey; } ;
struct ib_send_wr {int opcode; int send_flags; int num_sge; TYPE_3__* sg_list; TYPE_1__ ex; } ;
struct TYPE_7__ {scalar_t__ length; scalar_t__ lkey; int addr; } ;
struct TYPE_6__ {int to; void* len; void* stag; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int IB_SEND_SOLICITED ;


 int T3_MAX_SGE ;
 int T3_SEND ;
 int T3_SEND_WITH_INV ;
 int T3_SEND_WITH_SE ;
 int T3_SEND_WITH_SE_INV ;
 void* cpu_to_be32 (scalar_t__) ;
 int cpu_to_be64 (int ) ;

__attribute__((used)) static int build_rdma_send(union t3_wr *wqe, struct ib_send_wr *wr,
    u8 * flit_cnt)
{
 int i;
 u32 plen;

 switch (wr->opcode) {
 case 129:
  if (wr->send_flags & IB_SEND_SOLICITED)
   wqe->send.rdmaop = T3_SEND_WITH_SE;
  else
   wqe->send.rdmaop = T3_SEND;
  wqe->send.rem_stag = 0;
  break;
 case 128:
  if (wr->send_flags & IB_SEND_SOLICITED)
   wqe->send.rdmaop = T3_SEND_WITH_SE_INV;
  else
   wqe->send.rdmaop = T3_SEND_WITH_INV;
  wqe->send.rem_stag = cpu_to_be32(wr->ex.invalidate_rkey);
  break;
 default:
  return -EINVAL;
 }
 if (wr->num_sge > T3_MAX_SGE)
  return -EINVAL;
 wqe->send.reserved[0] = 0;
 wqe->send.reserved[1] = 0;
 wqe->send.reserved[2] = 0;
 plen = 0;
 for (i = 0; i < wr->num_sge; i++) {
  if ((plen + wr->sg_list[i].length) < plen)
   return -EMSGSIZE;

  plen += wr->sg_list[i].length;
  wqe->send.sgl[i].stag = cpu_to_be32(wr->sg_list[i].lkey);
  wqe->send.sgl[i].len = cpu_to_be32(wr->sg_list[i].length);
  wqe->send.sgl[i].to = cpu_to_be64(wr->sg_list[i].addr);
 }
 wqe->send.num_sgle = cpu_to_be32(wr->num_sge);
 *flit_cnt = 4 + ((wr->num_sge) << 1);
 wqe->send.plen = cpu_to_be32(plen);
 return 0;
}
