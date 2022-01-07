
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pau_qh_chg {struct nes_qp* nesqp; struct nes_vnic* nesvnic; struct nes_device* nesdev; } ;
struct nes_vnic {int dummy; } ;
struct TYPE_2__ {int qp_id; } ;
struct nes_qp {scalar_t__ nesqp_context_pbase; TYPE_1__ hwqp; int pau_state; } ;
struct nes_hw_cqp_wqe {int wqe_words; } ;
struct nes_device {int dummy; } ;
struct nes_cqp_request {int callback; int refcount; int cqp_callback; struct pau_qh_chg* cqp_callback_pointer; struct nes_hw_cqp_wqe cqp_wqe; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int NES_CQP_MANAGE_QUAD_HASH ;
 int NES_CQP_QP_CONTEXT_VALID ;
 int NES_CQP_QP_DEL_HTE ;
 int NES_CQP_QP_IWARP_STATE_RTS ;
 int NES_CQP_QP_TYPE_IWARP ;
 int NES_CQP_QP_WQE_CONTEXT_LOW_IDX ;
 int NES_CQP_WQE_ID_IDX ;
 int NES_CQP_WQE_OPCODE_IDX ;
 int NES_DBG_PAU ;
 int PAU_DEL_QH ;
 int atomic_set (int *,int) ;
 int kfree (struct pau_qh_chg*) ;
 struct pau_qh_chg* kmalloc (int,int ) ;
 int nes_chg_qh_handler ;
 int nes_debug (int ,char*) ;
 int nes_fill_init_cqp_wqe (struct nes_hw_cqp_wqe*,struct nes_device*) ;
 struct nes_cqp_request* nes_get_cqp_request (struct nes_device*) ;
 int nes_post_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int nes_put_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int set_wqe_32bit_value (int ,int ,int) ;
 int set_wqe_64bit_value (int ,int ,scalar_t__) ;

__attribute__((used)) static int nes_change_quad_hash(struct nes_device *nesdev,
    struct nes_vnic *nesvnic, struct nes_qp *nesqp)
{
 struct nes_cqp_request *cqp_request = ((void*)0);
 struct pau_qh_chg *qh_chg = ((void*)0);
 u64 u64temp;
 struct nes_hw_cqp_wqe *cqp_wqe;
 int ret = 0;

 cqp_request = nes_get_cqp_request(nesdev);
 if (cqp_request == ((void*)0)) {
  nes_debug(NES_DBG_PAU, "Failed to get a cqp_request.\n");
  ret = -ENOMEM;
  goto chg_qh_err;
 }

 qh_chg = kmalloc(sizeof *qh_chg, GFP_ATOMIC);
 if (qh_chg == ((void*)0)) {
  nes_debug(NES_DBG_PAU, "Failed to get a cqp_request.\n");
  ret = -ENOMEM;
  goto chg_qh_err;
 }
 qh_chg->nesdev = nesdev;
 qh_chg->nesvnic = nesvnic;
 qh_chg->nesqp = nesqp;
 nesqp->pau_state = PAU_DEL_QH;

 cqp_wqe = &cqp_request->cqp_wqe;
 nes_fill_init_cqp_wqe(cqp_wqe, nesdev);
 set_wqe_32bit_value(cqp_wqe->wqe_words,
       NES_CQP_WQE_OPCODE_IDX, NES_CQP_MANAGE_QUAD_HASH | NES_CQP_QP_DEL_HTE |
       NES_CQP_QP_TYPE_IWARP | NES_CQP_QP_CONTEXT_VALID | NES_CQP_QP_IWARP_STATE_RTS);
 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_WQE_ID_IDX, nesqp->hwqp.qp_id);
 u64temp = (u64)nesqp->nesqp_context_pbase;
 set_wqe_64bit_value(cqp_wqe->wqe_words, NES_CQP_QP_WQE_CONTEXT_LOW_IDX, u64temp);

 nes_debug(NES_DBG_PAU, "Waiting for CQP completion for deleting the quad hash.\n");

 cqp_request->cqp_callback_pointer = qh_chg;
 cqp_request->callback = 1;
 cqp_request->cqp_callback = nes_chg_qh_handler;
 atomic_set(&cqp_request->refcount, 1);
 nes_post_cqp_request(nesdev, cqp_request);

 return ret;

chg_qh_err:
 kfree(qh_chg);
 if (cqp_request)
  nes_put_cqp_request(nesdev, cqp_request);
 return ret;
}
