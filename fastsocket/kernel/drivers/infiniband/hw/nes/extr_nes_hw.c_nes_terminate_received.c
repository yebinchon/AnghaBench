
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int* q2_vbase; } ;
struct nes_qp {int terminate_eventtype; int term_flags; TYPE_1__ hwqp; } ;
struct nes_hw_aeqe {int * aeqe_words; } ;
struct nes_device {int dummy; } ;


 int BAD_FRAME_OFFSET ;
 int IB_EVENT_QP_FATAL ;
 int NES_AEQE_AEID_DDP_INVALID_MSN_GAP_IN_MSN ;
 int NES_AEQE_AEID_DDP_LCE_LOCAL_CATASTROPHIC ;
 int NES_AEQE_AEID_DDP_UBE_INVALID_DDP_VERSION ;
 int NES_AEQE_AEID_DDP_UBE_INVALID_MO ;
 int NES_AEQE_AEID_DDP_UBE_INVALID_QN ;
 int NES_AEQE_AEID_RDMAP_ROE_INVALID_RDMAP_VERSION ;
 size_t NES_AEQE_MISC_IDX ;
 int NES_AEQE_Q2_DATA_WRITTEN ;
 int NES_TERM_RCVD ;
 int be32_to_cpu (int) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 scalar_t__ locate_mpa (int*,int) ;
 int nes_terminate_connection (struct nes_device*,struct nes_qp*,struct nes_hw_aeqe*,int ) ;
 int nes_terminate_send_fin (struct nes_device*,struct nes_qp*,struct nes_hw_aeqe*) ;
 int nes_terminate_start_timer (struct nes_qp*) ;

__attribute__((used)) static void nes_terminate_received(struct nes_device *nesdev,
    struct nes_qp *nesqp, struct nes_hw_aeqe *aeqe)
{
 u32 aeq_info;
 u8 *pkt;
 u32 *mpa;
 u8 ddp_ctl;
 u8 rdma_ctl;
 u16 aeq_id = 0;

 aeq_info = le32_to_cpu(aeqe->aeqe_words[NES_AEQE_MISC_IDX]);
 if (aeq_info & NES_AEQE_Q2_DATA_WRITTEN) {


  pkt = nesqp->hwqp.q2_vbase + BAD_FRAME_OFFSET;
  mpa = (u32 *)locate_mpa(pkt, aeq_info);
  ddp_ctl = (be32_to_cpu(mpa[0]) >> 8) & 0xff;
  rdma_ctl = be32_to_cpu(mpa[0]) & 0xff;
  if ((ddp_ctl & 0xc0) != 0x40)
   aeq_id = NES_AEQE_AEID_DDP_LCE_LOCAL_CATASTROPHIC;
  else if ((ddp_ctl & 0x03) != 1)
   aeq_id = NES_AEQE_AEID_DDP_UBE_INVALID_DDP_VERSION;
  else if (be32_to_cpu(mpa[2]) != 2)
   aeq_id = NES_AEQE_AEID_DDP_UBE_INVALID_QN;
  else if (be32_to_cpu(mpa[3]) != 1)
   aeq_id = NES_AEQE_AEID_DDP_INVALID_MSN_GAP_IN_MSN;
  else if (be32_to_cpu(mpa[4]) != 0)
   aeq_id = NES_AEQE_AEID_DDP_UBE_INVALID_MO;
  else if ((rdma_ctl & 0xc0) != 0x40)
   aeq_id = NES_AEQE_AEID_RDMAP_ROE_INVALID_RDMAP_VERSION;

  if (aeq_id) {

   aeq_info = (aeq_info & 0xffff0000) | aeq_id;
   aeqe->aeqe_words[NES_AEQE_MISC_IDX] = cpu_to_le32(aeq_info);
   nes_terminate_connection(nesdev, nesqp, aeqe, IB_EVENT_QP_FATAL);
   return;
  }
 }

 nesqp->term_flags |= NES_TERM_RCVD;
 nesqp->terminate_eventtype = IB_EVENT_QP_FATAL;
 nes_terminate_start_timer(nesqp);
 nes_terminate_send_fin(nesdev, nesqp, aeqe);
}
