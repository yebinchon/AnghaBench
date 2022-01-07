
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct wrb_handle {struct iscsi_wrb* pwrb; struct iscsi_task* pio_handle; } ;
struct sol_cqe {int dummy; } ;
struct iscsi_wrb {int dummy; } ;
struct iscsi_task {TYPE_1__* hdr; scalar_t__ dd_data; } ;
struct iscsi_session {int lock; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct hwi_wrb_context {struct wrb_handle** pwrb_handle_basestd; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; } ;
struct common_sol_cqe {size_t wrb_index; int cid; int member_0; } ;
struct beiscsi_io_task {unsigned int wrb_type; } ;
struct beiscsi_hba {struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {struct iscsi_conn* conn; } ;
struct TYPE_2__ {int opcode; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_IO ;
 size_t BE_GET_CRI_FROM_CID (int ) ;





 int ISCSI_OPCODE_MASK ;
 int ISCSI_OP_LOGOUT ;
 int ISCSI_OP_NOOP_OUT ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int adapter_get_sol_cqe (struct beiscsi_hba*,struct sol_cqe*,struct common_sol_cqe*) ;
 int be_complete_io (struct beiscsi_conn*,struct iscsi_task*,struct common_sol_cqe*) ;
 int be_complete_logout (struct beiscsi_conn*,struct iscsi_task*,struct common_sol_cqe*) ;
 int be_complete_nopin_resp (struct beiscsi_conn*,struct iscsi_task*,struct common_sol_cqe*) ;
 int be_complete_tmf (struct beiscsi_conn*,struct iscsi_task*,struct common_sol_cqe*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hwi_complete_cmd(struct beiscsi_conn *beiscsi_conn,
        struct beiscsi_hba *phba, struct sol_cqe *psol)
{
 struct hwi_wrb_context *pwrb_context;
 struct wrb_handle *pwrb_handle;
 struct iscsi_wrb *pwrb = ((void*)0);
 struct hwi_controller *phwi_ctrlr;
 struct iscsi_task *task;
 unsigned int type;
 struct iscsi_conn *conn = beiscsi_conn->conn;
 struct iscsi_session *session = conn->session;
 struct common_sol_cqe csol_cqe = {0};
 uint16_t cri_index = 0;

 phwi_ctrlr = phba->phwi_ctrlr;


 adapter_get_sol_cqe(phba, psol, &csol_cqe);

 cri_index = BE_GET_CRI_FROM_CID(csol_cqe.cid);
 pwrb_context = &phwi_ctrlr->wrb_context[cri_index];

 pwrb_handle = pwrb_context->pwrb_handle_basestd[
        csol_cqe.wrb_index];

 task = pwrb_handle->pio_handle;
 pwrb = pwrb_handle->pwrb;
 type = ((struct beiscsi_io_task *)task->dd_data)->wrb_type;

 spin_lock_bh(&session->lock);
 switch (type) {
 case 132:
 case 131:
  if ((task->hdr->opcode & ISCSI_OPCODE_MASK) ==
       ISCSI_OP_NOOP_OUT)
   be_complete_nopin_resp(beiscsi_conn, task, &csol_cqe);
  else
   be_complete_io(beiscsi_conn, task, &csol_cqe);
  break;

 case 129:
  if ((task->hdr->opcode & ISCSI_OPCODE_MASK) == ISCSI_OP_LOGOUT)
   be_complete_logout(beiscsi_conn, task, &csol_cqe);
  else
   be_complete_tmf(beiscsi_conn, task, &csol_cqe);
  break;

 case 130:
  beiscsi_log(phba, KERN_ERR,
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_IO,
       "BM_%d :\t\t No HWH_TYPE_LOGIN Expected in"
       " hwi_complete_cmd- Solicited path\n");
  break;

 case 128:
  be_complete_nopin_resp(beiscsi_conn, task, &csol_cqe);
  break;

 default:
  beiscsi_log(phba, KERN_WARNING,
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_IO,
       "BM_%d : In hwi_complete_cmd, unknown type = %d"
       "wrb_index 0x%x CID 0x%x\n", type,
       csol_cqe.wrb_index,
       csol_cqe.cid);
  break;
 }

 spin_unlock_bh(&session->lock);
}
