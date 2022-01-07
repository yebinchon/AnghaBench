
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fcoe_task_ctx_entry {int dummy; } ;
struct TYPE_3__ {int counter; } ;
struct TYPE_4__ {TYPE_1__ refcount; } ;
struct bnx2fc_cmd {int tm_done; scalar_t__ wait_for_comp; TYPE_2__ refcount; int cmd_type; } ;


 int BNX2FC_IO_DBG (struct bnx2fc_cmd*,char*,int ,int ) ;
 int DID_ERROR ;
 int bnx2fc_cmd_release ;
 int bnx2fc_scsi_done (struct bnx2fc_cmd*,int ) ;
 int complete (int *) ;
 int kref_put (TYPE_2__*,int ) ;

void bnx2fc_process_cleanup_compl(struct bnx2fc_cmd *io_req,
      struct fcoe_task_ctx_entry *task,
      u8 num_rq)
{
 BNX2FC_IO_DBG(io_req, "Entered process_cleanup_compl "
         "refcnt = %d, cmd_type = %d\n",
     io_req->refcount.refcount.counter, io_req->cmd_type);
 bnx2fc_scsi_done(io_req, DID_ERROR);
 kref_put(&io_req->refcount, bnx2fc_cmd_release);
 if (io_req->wait_for_comp)
  complete(&io_req->tm_done);
}
