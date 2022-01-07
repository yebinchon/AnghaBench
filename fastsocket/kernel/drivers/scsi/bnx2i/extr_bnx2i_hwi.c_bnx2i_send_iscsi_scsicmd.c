
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2i_conn {TYPE_2__* ep; } ;
struct bnx2i_cmd_request {scalar_t__ cq_index; } ;
struct bnx2i_cmd {int req; } ;
struct TYPE_3__ {scalar_t__ sq_prod_qe; } ;
struct TYPE_4__ {TYPE_1__ qp; } ;


 int bnx2i_ring_dbell_update_sq_params (struct bnx2i_conn*,int) ;
 int memcpy (struct bnx2i_cmd_request*,int *,int) ;

int bnx2i_send_iscsi_scsicmd(struct bnx2i_conn *bnx2i_conn,
        struct bnx2i_cmd *cmd)
{
 struct bnx2i_cmd_request *scsi_cmd_wqe;

 scsi_cmd_wqe = (struct bnx2i_cmd_request *)
      bnx2i_conn->ep->qp.sq_prod_qe;
 memcpy(scsi_cmd_wqe, &cmd->req, sizeof(struct bnx2i_cmd_request));
 scsi_cmd_wqe->cq_index = 0;

 bnx2i_ring_dbell_update_sq_params(bnx2i_conn, 1);
 return 0;
}
