
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int qp_id; } ;
struct nes_qp {int term_sq_flush_code; int term_rq_flush_code; TYPE_1__ hwqp; } ;
struct nes_hw_cqp_wqe {void** wqe_words; } ;
struct nes_device {int dummy; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; int minor_code; int major_code; int waitq; struct nes_hw_cqp_wqe cqp_wqe; int refcount; } ;


 int CQE_MAJOR_DRV ;
 int NES_CQP_FLUSH_MAJ_MIN ;
 int NES_CQP_FLUSH_RQ ;
 int NES_CQP_FLUSH_SQ ;
 int NES_CQP_FLUSH_WQES ;
 size_t NES_CQP_QP_WQE_FLUSH_RQ_CODE ;
 size_t NES_CQP_QP_WQE_FLUSH_SQ_CODE ;
 size_t NES_CQP_WQE_ID_IDX ;
 size_t NES_CQP_WQE_OPCODE_IDX ;
 int NES_DBG_QP ;
 int NES_EVENT_TIMEOUT ;
 int NES_IWARP_CQE_MAJOR_FLUSH ;
 int NES_IWARP_CQE_MINOR_FLUSH ;
 int atomic_set (int *,int) ;
 void* cpu_to_le32 (int) ;
 int nes_debug (int ,char*,...) ;
 int nes_fill_init_cqp_wqe (struct nes_hw_cqp_wqe*,struct nes_device*) ;
 struct nes_cqp_request* nes_get_cqp_request (struct nes_device*) ;
 int nes_post_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int nes_put_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int wait_event_timeout (int ,int,int ) ;

void flush_wqes(struct nes_device *nesdev, struct nes_qp *nesqp,
  u32 which_wq, u32 wait_completion)
{
 struct nes_cqp_request *cqp_request;
 struct nes_hw_cqp_wqe *cqp_wqe;
 u32 sq_code = (NES_IWARP_CQE_MAJOR_FLUSH << 16) | NES_IWARP_CQE_MINOR_FLUSH;
 u32 rq_code = (NES_IWARP_CQE_MAJOR_FLUSH << 16) | NES_IWARP_CQE_MINOR_FLUSH;
 int ret;

 cqp_request = nes_get_cqp_request(nesdev);
 if (cqp_request == ((void*)0)) {
  nes_debug(NES_DBG_QP, "Failed to get a cqp_request.\n");
  return;
 }
 if (wait_completion) {
  cqp_request->waiting = 1;
  atomic_set(&cqp_request->refcount, 2);
 } else {
  cqp_request->waiting = 0;
 }
 cqp_wqe = &cqp_request->cqp_wqe;
 nes_fill_init_cqp_wqe(cqp_wqe, nesdev);


 if ((nesqp->term_sq_flush_code) && (which_wq & NES_CQP_FLUSH_SQ)) {
  which_wq |= NES_CQP_FLUSH_MAJ_MIN;
  sq_code = (CQE_MAJOR_DRV << 16) | nesqp->term_sq_flush_code;
  nesqp->term_sq_flush_code = 0;
 }

 if ((nesqp->term_rq_flush_code) && (which_wq & NES_CQP_FLUSH_RQ)) {
  which_wq |= NES_CQP_FLUSH_MAJ_MIN;
  rq_code = (CQE_MAJOR_DRV << 16) | nesqp->term_rq_flush_code;
  nesqp->term_rq_flush_code = 0;
 }

 if (which_wq & NES_CQP_FLUSH_MAJ_MIN) {
  cqp_wqe->wqe_words[NES_CQP_QP_WQE_FLUSH_SQ_CODE] = cpu_to_le32(sq_code);
  cqp_wqe->wqe_words[NES_CQP_QP_WQE_FLUSH_RQ_CODE] = cpu_to_le32(rq_code);
 }

 cqp_wqe->wqe_words[NES_CQP_WQE_OPCODE_IDX] =
   cpu_to_le32(NES_CQP_FLUSH_WQES | which_wq);
 cqp_wqe->wqe_words[NES_CQP_WQE_ID_IDX] = cpu_to_le32(nesqp->hwqp.qp_id);

 nes_post_cqp_request(nesdev, cqp_request);

 if (wait_completion) {

  ret = wait_event_timeout(cqp_request->waitq, (cqp_request->request_done != 0),
    NES_EVENT_TIMEOUT);
  nes_debug(NES_DBG_QP, "Flush SQ QP WQEs completed, ret=%u,"
    " CQP Major:Minor codes = 0x%04X:0x%04X\n",
    ret, cqp_request->major_code, cqp_request->minor_code);
  nes_put_cqp_request(nesdev, cqp_request);
 }
}
