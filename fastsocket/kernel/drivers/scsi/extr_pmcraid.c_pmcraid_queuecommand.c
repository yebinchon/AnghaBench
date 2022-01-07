
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int result; scalar_t__ underflow; int * cmnd; int cmd_len; TYPE_3__* device; } ;
struct TYPE_13__ {int unique_flags1; int array_id; int resource_address; int resource_handle; } ;
struct pmcraid_resource_entry {TYPE_6__ cfg_entry; scalar_t__ sync_reqd; } ;
struct pmcraid_ioarcb {int hrrq_id; int response_handle; int request_flags1; int request_flags0; int request_type; int resource_handle; int cdb; } ;
struct pmcraid_instance {scalar_t__ ioa_state; int num_hrrq; TYPE_5__* host; int last_message_id; scalar_t__ ioa_reset_in_progress; TYPE_2__* inq_data; } ;
struct pmcraid_cmd {int cmd_done; TYPE_4__* ioa_cb; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_12__ {int unique_id; } ;
struct TYPE_11__ {struct pmcraid_ioarcb ioarcb; } ;
struct TYPE_10__ {struct pmcraid_resource_entry* hostdata; TYPE_1__* host; } ;
struct TYPE_9__ {int fw_version; } ;
struct TYPE_8__ {scalar_t__ hostdata; } ;


 int DELAY_AFTER_RESET ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int INHIBIT_UL_CHECK ;
 scalar_t__ IOA_STATE_DEAD ;
 int NO_LINK_DESCS ;
 scalar_t__ PMCRAID_FW_VERSION_1 ;
 int PMCRAID_PHYS_BUS_ID ;
 int PMCRAID_VSET_BUS_ID ;
 int REQ_TYPE_SCSI ;
 scalar_t__ RES_IS_GSCSI (TYPE_6__) ;
 scalar_t__ RES_IS_VSET (TYPE_6__) ;
 int RES_LUN (int ) ;
 int RES_TARGET (int ) ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int SYNCHRONIZE_CACHE ;
 int SYNC_COMPLETE ;
 int _pmcraid_fire_command (struct pmcraid_cmd*) ;
 int atomic_add_return (int,int *) ;
 scalar_t__ be16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,int *,int ) ;
 int pmcraid_build_ioadl (struct pmcraid_instance*,struct pmcraid_cmd*) ;
 int pmcraid_err (char*) ;
 struct pmcraid_cmd* pmcraid_get_free_cmd (struct pmcraid_instance*) ;
 int pmcraid_info (char*,...) ;
 int pmcraid_io_done ;
 int pmcraid_return_cmd (struct pmcraid_cmd*) ;
 int pmcraid_task_attributes (struct scsi_cmnd*) ;
 void stub1 (struct scsi_cmnd*) ;
 void stub2 (struct scsi_cmnd*) ;

__attribute__((used)) static int pmcraid_queuecommand(
 struct scsi_cmnd *scsi_cmd,
 void (*done) (struct scsi_cmnd *)
)
{
 struct pmcraid_instance *pinstance;
 struct pmcraid_resource_entry *res;
 struct pmcraid_ioarcb *ioarcb;
 struct pmcraid_cmd *cmd;
 u32 fw_version;
 int rc = 0;

 pinstance =
  (struct pmcraid_instance *)scsi_cmd->device->host->hostdata;
 fw_version = be16_to_cpu(pinstance->inq_data->fw_version);
 scsi_cmd->scsi_done = done;
 res = scsi_cmd->device->hostdata;
 scsi_cmd->result = (DID_OK << 16);




 if (pinstance->ioa_state == IOA_STATE_DEAD) {
  pmcraid_info("IOA is dead, but queuecommand is scheduled\n");
  scsi_cmd->result = (DID_NO_CONNECT << 16);
  scsi_cmd->scsi_done(scsi_cmd);
  return 0;
 }


 if (pinstance->ioa_reset_in_progress)
  return SCSI_MLQUEUE_HOST_BUSY;




 if (scsi_cmd->cmnd[0] == SYNCHRONIZE_CACHE) {
  pmcraid_info("SYNC_CACHE(0x35), completing in driver itself\n");
  scsi_cmd->scsi_done(scsi_cmd);
  return 0;
 }


 cmd = pmcraid_get_free_cmd(pinstance);

 if (cmd == ((void*)0)) {
  pmcraid_err("free command block is not available\n");
  return SCSI_MLQUEUE_HOST_BUSY;
 }

 cmd->scsi_cmd = scsi_cmd;
 ioarcb = &(cmd->ioa_cb->ioarcb);
 memcpy(ioarcb->cdb, scsi_cmd->cmnd, scsi_cmd->cmd_len);
 ioarcb->resource_handle = res->cfg_entry.resource_handle;
 ioarcb->request_type = REQ_TYPE_SCSI;






 ioarcb->hrrq_id = atomic_add_return(1, &(pinstance->last_message_id)) %
     pinstance->num_hrrq;
 cmd->cmd_done = pmcraid_io_done;

 if (RES_IS_GSCSI(res->cfg_entry) || RES_IS_VSET(res->cfg_entry)) {
  if (scsi_cmd->underflow == 0)
   ioarcb->request_flags0 |= INHIBIT_UL_CHECK;

  if (res->sync_reqd) {
   ioarcb->request_flags0 |= SYNC_COMPLETE;
   res->sync_reqd = 0;
  }

  ioarcb->request_flags0 |= NO_LINK_DESCS;
  ioarcb->request_flags1 |= pmcraid_task_attributes(scsi_cmd);

  if (RES_IS_GSCSI(res->cfg_entry))
   ioarcb->request_flags1 |= DELAY_AFTER_RESET;
 }

 rc = pmcraid_build_ioadl(pinstance, cmd);

 pmcraid_info("command (%d) CDB[0] = %x for %x:%x:%x:%x\n",
       le32_to_cpu(ioarcb->response_handle) >> 2,
       scsi_cmd->cmnd[0], pinstance->host->unique_id,
       RES_IS_VSET(res->cfg_entry) ? PMCRAID_VSET_BUS_ID :
   PMCRAID_PHYS_BUS_ID,
       RES_IS_VSET(res->cfg_entry) ?
   (fw_version <= PMCRAID_FW_VERSION_1 ?
    res->cfg_entry.unique_flags1 :
     res->cfg_entry.array_id & 0xFF) :
   RES_TARGET(res->cfg_entry.resource_address),
       RES_LUN(res->cfg_entry.resource_address));

 if (likely(rc == 0)) {
  _pmcraid_fire_command(cmd);
 } else {
  pmcraid_err("queuecommand could not build ioadl\n");
  pmcraid_return_cmd(cmd);
  rc = SCSI_MLQUEUE_HOST_BUSY;
 }

 return rc;
}
