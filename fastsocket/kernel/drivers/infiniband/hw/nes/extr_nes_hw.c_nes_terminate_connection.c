
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef unsigned long u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nes_qp {int term_flags; int terminate_eventtype; int lock; scalar_t__ last_aeq; void* hw_tcp_state; void* hw_iwarp_state; } ;
struct nes_hw_aeqe {int * aeqe_words; } ;
struct nes_device {int iw_status; struct nes_adapter* nesadapter; } ;
struct nes_adapter {scalar_t__ send_term_ok; scalar_t__* qp_table; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 size_t NES_AEQE_COMP_QP_CQ_ID_IDX ;
 int NES_AEQE_IWARP_STATE_MASK ;
 int NES_AEQE_IWARP_STATE_SHIFT ;
 size_t NES_AEQE_MISC_IDX ;
 int NES_AEQE_TCP_STATE_MASK ;
 int NES_AEQE_TCP_STATE_SHIFT ;
 int NES_CQP_QP_IWARP_STATE_ERROR ;
 int NES_CQP_QP_IWARP_STATE_TERMINATE ;
 int NES_CQP_QP_TERM_DONT_SEND_FIN ;
 int NES_CQP_QP_TERM_DONT_SEND_TERM_MSG ;
 size_t NES_FIRST_QPN ;
 int NES_TERM_DONE ;
 int NES_TERM_SENT ;
 int WARN_ON (int) ;
 size_t le32_to_cpu (int ) ;
 int nes_bld_terminate_hdr (struct nes_qp*,scalar_t__,int) ;
 int nes_cm_disconn (struct nes_qp*) ;
 int nes_hw_modify_qp (struct nes_device*,struct nes_qp*,int,int,int ) ;
 int nes_terminate_start_timer (struct nes_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nes_terminate_connection(struct nes_device *nesdev, struct nes_qp *nesqp,
   struct nes_hw_aeqe *aeqe, enum ib_event_type eventtype)
{
 u64 context;
 unsigned long flags;
 u32 aeq_info;
 u16 async_event_id;
 u8 tcp_state;
 u8 iwarp_state;
 u32 termlen = 0;
 u32 mod_qp_flags = NES_CQP_QP_IWARP_STATE_TERMINATE |
      NES_CQP_QP_TERM_DONT_SEND_FIN;
 struct nes_adapter *nesadapter = nesdev->nesadapter;

 if (nesqp->term_flags & NES_TERM_SENT)
  return;

 aeq_info = le32_to_cpu(aeqe->aeqe_words[NES_AEQE_MISC_IDX]);
 tcp_state = (aeq_info & NES_AEQE_TCP_STATE_MASK) >> NES_AEQE_TCP_STATE_SHIFT;
 iwarp_state = (aeq_info & NES_AEQE_IWARP_STATE_MASK) >> NES_AEQE_IWARP_STATE_SHIFT;
 async_event_id = (u16)aeq_info;

 context = (unsigned long)nesadapter->qp_table[le32_to_cpu(
  aeqe->aeqe_words[NES_AEQE_COMP_QP_CQ_ID_IDX]) - NES_FIRST_QPN];
 if (!context) {
  WARN_ON(!context);
  return;
 }

 nesqp = (struct nes_qp *)(unsigned long)context;
 spin_lock_irqsave(&nesqp->lock, flags);
 nesqp->hw_iwarp_state = iwarp_state;
 nesqp->hw_tcp_state = tcp_state;
 nesqp->last_aeq = async_event_id;
 nesqp->terminate_eventtype = eventtype;
 spin_unlock_irqrestore(&nesqp->lock, flags);

 if (nesadapter->send_term_ok)
  termlen = nes_bld_terminate_hdr(nesqp, async_event_id, aeq_info);
 else
  mod_qp_flags |= NES_CQP_QP_TERM_DONT_SEND_TERM_MSG;

 if (!nesdev->iw_status) {
  nesqp->term_flags = NES_TERM_DONE;
  nes_hw_modify_qp(nesdev, nesqp, NES_CQP_QP_IWARP_STATE_ERROR, 0, 0);
  nes_cm_disconn(nesqp);
 } else {
  nes_terminate_start_timer(nesqp);
  nesqp->term_flags |= NES_TERM_SENT;
  nes_hw_modify_qp(nesdev, nesqp, mod_qp_flags, termlen, 0);
 }
}
