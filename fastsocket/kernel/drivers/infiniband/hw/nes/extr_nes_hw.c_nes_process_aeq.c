
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct nes_hw_aeqe {scalar_t__* aeqe_words; } ;
struct nes_hw_aeq {size_t aeq_head; size_t aeq_size; struct nes_hw_aeqe* aeq_vbase; } ;
struct nes_device {scalar_t__ regs; } ;


 size_t NES_AEQE_COMP_QP_CQ_ID_IDX ;
 size_t NES_AEQE_CQ ;
 size_t NES_AEQE_MISC_IDX ;
 size_t NES_AEQE_QP ;
 size_t NES_AEQE_VALID ;
 scalar_t__ NES_AEQ_ALLOC ;
 int NES_DBG_AEQ ;
 size_t NES_FIRST_QPN ;
 size_t le32_to_cpu (scalar_t__) ;
 int nes_debug (int ,char*,int ) ;
 int nes_process_iwarp_aeqe (struct nes_device*,struct nes_hw_aeqe*) ;
 int nes_write32 (scalar_t__,int) ;

__attribute__((used)) static void nes_process_aeq(struct nes_device *nesdev, struct nes_hw_aeq *aeq)
{

 u32 head;
 u32 aeq_size;
 u32 aeqe_misc;
 u32 aeqe_cq_id;
 struct nes_hw_aeqe volatile *aeqe;

 head = aeq->aeq_head;
 aeq_size = aeq->aeq_size;

 do {
  aeqe = &aeq->aeq_vbase[head];
  if ((le32_to_cpu(aeqe->aeqe_words[NES_AEQE_MISC_IDX]) & NES_AEQE_VALID) == 0)
   break;
  aeqe_misc = le32_to_cpu(aeqe->aeqe_words[NES_AEQE_MISC_IDX]);
  aeqe_cq_id = le32_to_cpu(aeqe->aeqe_words[NES_AEQE_COMP_QP_CQ_ID_IDX]);
  if (aeqe_misc & (NES_AEQE_QP|NES_AEQE_CQ)) {
   if (aeqe_cq_id >= NES_FIRST_QPN) {





    nes_process_iwarp_aeqe(nesdev, (struct nes_hw_aeqe *)aeqe);
   } else {

    nes_debug(NES_DBG_AEQ, "Processing CQP related AE, misc = 0x%04X\n",
      (u16)(aeqe_misc >> 16));
   }
  }

  aeqe->aeqe_words[NES_AEQE_MISC_IDX] = 0;

  if (++head >= aeq_size)
   head = 0;

  nes_write32(nesdev->regs + NES_AEQ_ALLOC, 1 << 16);
 }
 while (1);
 aeq->aeq_head = head;
}
