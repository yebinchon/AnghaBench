
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_4__* device; } ;
struct ipr_resource_entry {int needs_sync_complete; int resetting_device; int in_erp; } ;
struct ipr_ioa_cfg {int host; } ;
struct TYPE_6__ {int ioasc; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_8__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {TYPE_5__* hrrq; int queue; struct scsi_cmnd* scsi_cmd; TYPE_3__ s; } ;
struct TYPE_10__ {int hrrq_free_q; } ;
struct TYPE_9__ {int channel; struct ipr_resource_entry* hostdata; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int DID_IMM_RETRY ;
 int DID_NO_CONNECT ;
 int DID_PASSTHROUGH ;






 int IPR_IOASC_IOASC_MASK ;




 int IPR_IOASC_SENSE_KEY (int) ;
 int IPR_IOASC_SENSE_STATUS (int) ;

 int RECOVERED_ERROR ;
 int SAM_STAT_CHECK_CONDITION ;
 int be32_to_cpu (int ) ;
 int ipr_dump_ioasa (struct ipr_ioa_cfg*,struct ipr_cmnd*,struct ipr_resource_entry*) ;
 int ipr_erp_cancel_all (struct ipr_cmnd*) ;
 int ipr_gen_sense (struct ipr_cmnd*) ;
 int ipr_get_autosense (struct ipr_cmnd*) ;
 int ipr_is_gscsi (struct ipr_resource_entry*) ;
 int ipr_is_naca_model (struct ipr_resource_entry*) ;
 int ipr_is_vset_device (struct ipr_resource_entry*) ;
 int ipr_scsi_eh_done (struct ipr_cmnd*) ;
 int list_add_tail (int *,int *) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_report_bus_reset (int ,int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void ipr_erp_start(struct ipr_ioa_cfg *ioa_cfg,
         struct ipr_cmnd *ipr_cmd)
{
 struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
 struct ipr_resource_entry *res = scsi_cmd->device->hostdata;
 u32 ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);
 u32 masked_ioasc = ioasc & IPR_IOASC_IOASC_MASK;

 if (!res) {
  ipr_scsi_eh_done(ipr_cmd);
  return;
 }

 if (!ipr_is_gscsi(res) && masked_ioasc != 134)
  ipr_gen_sense(ipr_cmd);

 ipr_dump_ioasa(ioa_cfg, ipr_cmd, res);

 switch (masked_ioasc) {
 case 137:
  if (ipr_is_naca_model(res))
   scsi_cmd->result |= (DID_ABORT << 16);
  else
   scsi_cmd->result |= (DID_IMM_RETRY << 16);
  break;
 case 131:
 case 132:
  scsi_cmd->result |= (DID_NO_CONNECT << 16);
  break;
 case 133:
  scsi_cmd->result |= (DID_NO_CONNECT << 16);
  if (!ipr_is_naca_model(res))
   res->needs_sync_complete = 1;
  break;
 case 128:
  if (!res->in_erp)
   res->needs_sync_complete = 1;
  scsi_cmd->result |= (DID_IMM_RETRY << 16);
  break;
 case 130:
 case 138:
  scsi_cmd->result |= (DID_PASSTHROUGH << 16);
  break;
 case 136:
 case 135:




  if (!res->resetting_device)
   scsi_report_bus_reset(ioa_cfg->host, scsi_cmd->device->channel);
  scsi_cmd->result |= (DID_ERROR << 16);
  if (!ipr_is_naca_model(res))
   res->needs_sync_complete = 1;
  break;
 case 134:
  scsi_cmd->result |= IPR_IOASC_SENSE_STATUS(ioasc);
  if (IPR_IOASC_SENSE_STATUS(ioasc) == SAM_STAT_CHECK_CONDITION) {
   if (!ipr_get_autosense(ipr_cmd)) {
    if (!ipr_is_naca_model(res)) {
     ipr_erp_cancel_all(ipr_cmd);
     return;
    }
   }
  }
  if (!ipr_is_naca_model(res))
   res->needs_sync_complete = 1;
  break;
 case 129:
  break;
 default:
  if (IPR_IOASC_SENSE_KEY(ioasc) > RECOVERED_ERROR)
   scsi_cmd->result |= (DID_ERROR << 16);
  if (!ipr_is_vset_device(res) && !ipr_is_naca_model(res))
   res->needs_sync_complete = 1;
  break;
 }

 scsi_dma_unmap(ipr_cmd->scsi_cmd);
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
 scsi_cmd->scsi_done(scsi_cmd);
}
