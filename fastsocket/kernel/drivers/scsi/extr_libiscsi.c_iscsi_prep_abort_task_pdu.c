
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tm {int opcode; int flags; int refcmdsn; int rtt; int lun; } ;
struct iscsi_task {int cmdsn; int hdr_itt; int lun; } ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_FLAG_TM_FUNC_MASK ;
 int ISCSI_OP_IMMEDIATE ;
 int ISCSI_OP_SCSI_TMFUNC ;
 int ISCSI_TM_FUNC_ABORT_TASK ;
 int memset (struct iscsi_tm*,int ,int) ;

__attribute__((used)) static void iscsi_prep_abort_task_pdu(struct iscsi_task *task,
          struct iscsi_tm *hdr)
{
 memset(hdr, 0, sizeof(*hdr));
 hdr->opcode = ISCSI_OP_SCSI_TMFUNC | ISCSI_OP_IMMEDIATE;
 hdr->flags = ISCSI_TM_FUNC_ABORT_TASK & ISCSI_FLAG_TM_FUNC_MASK;
 hdr->flags |= ISCSI_FLAG_CMD_FINAL;
 hdr->lun = task->lun;
 hdr->rtt = task->hdr_itt;
 hdr->refcmdsn = task->cmdsn;
}
