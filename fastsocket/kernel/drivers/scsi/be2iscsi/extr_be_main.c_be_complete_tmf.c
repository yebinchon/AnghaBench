
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tm_rsp {int itt; void* max_cmdsn; void* exp_cmdsn; int response; int flags; int opcode; } ;
struct iscsi_task {scalar_t__ hdr; struct beiscsi_io_task* dd_data; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct common_sol_cqe {scalar_t__ cmd_wnd; scalar_t__ exp_cmdsn; int i_resp; int i_flags; } ;
struct beiscsi_io_task {int libiscsi_itt; } ;
struct beiscsi_conn {struct iscsi_conn* conn; } ;


 int ISCSI_OP_SCSI_TMFUNC_RSP ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 void* cpu_to_be32 (scalar_t__) ;

__attribute__((used)) static void
be_complete_tmf(struct beiscsi_conn *beiscsi_conn,
   struct iscsi_task *task,
   struct common_sol_cqe *csol_cqe)
{
 struct iscsi_tm_rsp *hdr;
 struct iscsi_conn *conn = beiscsi_conn->conn;
 struct beiscsi_io_task *io_task = task->dd_data;

 hdr = (struct iscsi_tm_rsp *)task->hdr;
 hdr->opcode = ISCSI_OP_SCSI_TMFUNC_RSP;
 hdr->flags = csol_cqe->i_flags;
 hdr->response = csol_cqe->i_resp;
 hdr->exp_cmdsn = cpu_to_be32(csol_cqe->exp_cmdsn);
 hdr->max_cmdsn = cpu_to_be32(csol_cqe->exp_cmdsn +
         csol_cqe->cmd_wnd - 1);

 hdr->itt = io_task->libiscsi_itt;
 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)hdr, ((void*)0), 0);
}
