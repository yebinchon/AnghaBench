
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ u32 ;
struct ipr_ioa_cfg {TYPE_10__* pdev; scalar_t__ sis64; } ;
struct TYPE_17__ {int fd_ioasc; } ;
struct TYPE_16__ {int fd_ioasc; } ;
struct TYPE_18__ {TYPE_6__ error; TYPE_5__ error64; } ;
struct TYPE_19__ {TYPE_7__ u; } ;
struct ipr_hostrcb {int queue; TYPE_8__ hcam; } ;
struct TYPE_13__ {int ioasc; } ;
struct TYPE_14__ {TYPE_2__ hdr; } ;
struct TYPE_15__ {TYPE_3__ ioasa; } ;
struct TYPE_12__ {struct ipr_hostrcb* hostrcb; } ;
struct ipr_cmnd {TYPE_9__* hrrq; int queue; TYPE_4__ s; TYPE_1__ u; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_20__ {int hrrq_free_q; } ;
struct TYPE_11__ {int dev; } ;


 int IPR_HCAM_CDB_OP_CODE_LOG_DATA ;
 scalar_t__ IPR_IOASC_IOA_WAS_RESET ;
 scalar_t__ IPR_IOASC_NR_IOA_RESET_REQUIRED ;
 int IPR_SHUTDOWN_ABBREV ;
 scalar_t__ be32_to_cpu (int ) ;
 int dev_err (int *,char*,scalar_t__) ;
 int ipr_handle_log_data (struct ipr_ioa_cfg*,struct ipr_hostrcb*) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int ipr_send_hcam (struct ipr_ioa_cfg*,int ,struct ipr_hostrcb*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void ipr_process_error(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 struct ipr_hostrcb *hostrcb = ipr_cmd->u.hostrcb;
 u32 ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);
 u32 fd_ioasc;

 if (ioa_cfg->sis64)
  fd_ioasc = be32_to_cpu(hostrcb->hcam.u.error64.fd_ioasc);
 else
  fd_ioasc = be32_to_cpu(hostrcb->hcam.u.error.fd_ioasc);

 list_del(&hostrcb->queue);
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);

 if (!ioasc) {
  ipr_handle_log_data(ioa_cfg, hostrcb);
  if (fd_ioasc == IPR_IOASC_NR_IOA_RESET_REQUIRED)
   ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_ABBREV);
 } else if (ioasc != IPR_IOASC_IOA_WAS_RESET) {
  dev_err(&ioa_cfg->pdev->dev,
   "Host RCB failed with IOASC: 0x%08X\n", ioasc);
 }

 ipr_send_hcam(ioa_cfg, IPR_HCAM_CDB_OP_CODE_LOG_DATA, hostrcb);
}
