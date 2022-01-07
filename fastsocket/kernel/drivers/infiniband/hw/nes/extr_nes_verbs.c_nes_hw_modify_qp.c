
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int qp_id; } ;
struct nes_qp {TYPE_1__ hwqp; scalar_t__ nesqp_context_pbase; int refcount; } ;
struct nes_hw_cqp_wqe {int * wqe_words; } ;
struct nes_device {int dummy; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; int major_code; int minor_code; int waitq; int refcount; struct nes_hw_cqp_wqe cqp_wqe; } ;


 int EIO ;
 int ENOMEM ;
 int ETIME ;
 int NES_CQP_MODIFY_QP ;
 int NES_CQP_OP_TERMLEN_SHIFT ;
 int NES_CQP_QP_IWARP_STATE_MASK ;
 int NES_CQP_QP_IWARP_STATE_TERMINATE ;
 int NES_CQP_QP_TERM_DONT_SEND_TERM_MSG ;
 int NES_CQP_QP_TYPE_IWARP ;
 int NES_CQP_QP_WQE_CONTEXT_LOW_IDX ;
 size_t NES_CQP_QP_WQE_NEW_MSS_IDX ;
 size_t NES_CQP_WQE_ID_IDX ;
 size_t NES_CQP_WQE_OPCODE_IDX ;
 int NES_DBG_MOD_QP ;
 int NES_EVENT_TIMEOUT ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int le32_to_cpu (int ) ;
 int nes_debug (int ,char*,...) ;
 int nes_fill_init_cqp_wqe (struct nes_hw_cqp_wqe*,struct nes_device*) ;
 struct nes_cqp_request* nes_get_cqp_request (struct nes_device*) ;
 int nes_post_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int nes_put_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int set_wqe_32bit_value (int *,size_t,int) ;
 int set_wqe_64bit_value (int *,int ,int ) ;
 int wait_event_timeout (int ,int,int ) ;

int nes_hw_modify_qp(struct nes_device *nesdev, struct nes_qp *nesqp,
  u32 next_iwarp_state, u32 termlen, u32 wait_completion)
{
 struct nes_hw_cqp_wqe *cqp_wqe;


 struct nes_cqp_request *cqp_request;
 int ret;
 u16 major_code;

 nes_debug(NES_DBG_MOD_QP, "QP%u, refcount=%d\n",
   nesqp->hwqp.qp_id, atomic_read(&nesqp->refcount));

 cqp_request = nes_get_cqp_request(nesdev);
 if (cqp_request == ((void*)0)) {
  nes_debug(NES_DBG_MOD_QP, "Failed to get a cqp_request.\n");
  return -ENOMEM;
 }
 if (wait_completion) {
  cqp_request->waiting = 1;
 } else {
  cqp_request->waiting = 0;
 }
 cqp_wqe = &cqp_request->cqp_wqe;

 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX,
   NES_CQP_MODIFY_QP | NES_CQP_QP_TYPE_IWARP | next_iwarp_state);
 nes_debug(NES_DBG_MOD_QP, "using next_iwarp_state=%08x, wqe_words=%08x\n",
   next_iwarp_state, le32_to_cpu(cqp_wqe->wqe_words[NES_CQP_WQE_OPCODE_IDX]));
 nes_fill_init_cqp_wqe(cqp_wqe, nesdev);
 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_WQE_ID_IDX, nesqp->hwqp.qp_id);
 set_wqe_64bit_value(cqp_wqe->wqe_words, NES_CQP_QP_WQE_CONTEXT_LOW_IDX, (u64)nesqp->nesqp_context_pbase);


 if (((next_iwarp_state & NES_CQP_QP_IWARP_STATE_MASK) == NES_CQP_QP_IWARP_STATE_TERMINATE) &&
     !(next_iwarp_state & NES_CQP_QP_TERM_DONT_SEND_TERM_MSG)) {
  termlen = ((termlen + 3) >> 2) << NES_CQP_OP_TERMLEN_SHIFT;
  set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_QP_WQE_NEW_MSS_IDX, termlen);
 }

 atomic_set(&cqp_request->refcount, 2);
 nes_post_cqp_request(nesdev, cqp_request);


 if (wait_completion) {


  ret = wait_event_timeout(cqp_request->waitq, (cqp_request->request_done != 0),
    NES_EVENT_TIMEOUT);
  nes_debug(NES_DBG_MOD_QP, "Modify iwarp QP%u completed, wait_event_timeout ret=%u, "
    "CQP Major:Minor codes = 0x%04X:0x%04X.\n",
    nesqp->hwqp.qp_id, ret, cqp_request->major_code, cqp_request->minor_code);
  major_code = cqp_request->major_code;
  if (major_code) {
   nes_debug(NES_DBG_MOD_QP, "Modify iwarp QP%u failed"
     "CQP Major:Minor codes = 0x%04X:0x%04X, intended next state = 0x%08X.\n",
     nesqp->hwqp.qp_id, cqp_request->major_code,
     cqp_request->minor_code, next_iwarp_state);
  }

  nes_put_cqp_request(nesdev, cqp_request);

  if (!ret)
   return -ETIME;
  else if (major_code)
   return -EIO;
  else
   return 0;
 } else {
  return 0;
 }
}
