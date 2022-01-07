
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct be_queue_info {scalar_t__ created; } ;
struct hwi_context_memory {struct hwi_async_pdu_context* pasync_ctx; TYPE_2__* be_eq; struct be_queue_info* be_cq; struct be_queue_info be_def_dataq; struct be_queue_info be_def_hdrq; struct be_queue_info* be_wrbq; } ;
struct hwi_async_pdu_context {struct be_queue_info* async_entry; } ;
struct TYPE_3__ {int cxns_per_ctrl; } ;
struct be_ctrl_info {int dummy; } ;
struct beiscsi_hba {int num_cpus; scalar_t__ msix_enabled; TYPE_1__ params; struct hwi_controller* phwi_ctrlr; struct be_ctrl_info ctrl; } ;
struct TYPE_4__ {struct be_queue_info q; } ;


 int QTYPE_CQ ;
 int QTYPE_DPDUQ ;
 int QTYPE_EQ ;
 int QTYPE_SGL ;
 int QTYPE_WRBQ ;
 int be_cmd_fw_uninit (struct be_ctrl_info*) ;
 int be_mcc_queues_destroy (struct beiscsi_hba*) ;
 int beiscsi_cmd_q_destroy (struct be_ctrl_info*,struct be_queue_info*,int ) ;
 int free_wrb_handles (struct beiscsi_hba*) ;
 int kfree (struct be_queue_info*) ;

__attribute__((used)) static void hwi_cleanup(struct beiscsi_hba *phba)
{
 struct be_queue_info *q;
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct hwi_controller *phwi_ctrlr;
 struct hwi_context_memory *phwi_context;
 struct hwi_async_pdu_context *pasync_ctx;
 int i, eq_num;

 phwi_ctrlr = phba->phwi_ctrlr;
 phwi_context = phwi_ctrlr->phwi_ctxt;
 for (i = 0; i < phba->params.cxns_per_ctrl; i++) {
  q = &phwi_context->be_wrbq[i];
  if (q->created)
   beiscsi_cmd_q_destroy(ctrl, q, QTYPE_WRBQ);
 }
 kfree(phwi_context->be_wrbq);
 free_wrb_handles(phba);

 q = &phwi_context->be_def_hdrq;
 if (q->created)
  beiscsi_cmd_q_destroy(ctrl, q, QTYPE_DPDUQ);

 q = &phwi_context->be_def_dataq;
 if (q->created)
  beiscsi_cmd_q_destroy(ctrl, q, QTYPE_DPDUQ);

 beiscsi_cmd_q_destroy(ctrl, ((void*)0), QTYPE_SGL);

 for (i = 0; i < (phba->num_cpus); i++) {
  q = &phwi_context->be_cq[i];
  if (q->created)
   beiscsi_cmd_q_destroy(ctrl, q, QTYPE_CQ);
 }
 if (phba->msix_enabled)
  eq_num = 1;
 else
  eq_num = 0;
 for (i = 0; i < (phba->num_cpus + eq_num); i++) {
  q = &phwi_context->be_eq[i].q;
  if (q->created)
   beiscsi_cmd_q_destroy(ctrl, q, QTYPE_EQ);
 }
 be_mcc_queues_destroy(phba);

 pasync_ctx = phwi_ctrlr->phwi_ctxt->pasync_ctx;
 kfree(pasync_ctx->async_entry);
 be_cmd_fw_uninit(ctrl);
}
