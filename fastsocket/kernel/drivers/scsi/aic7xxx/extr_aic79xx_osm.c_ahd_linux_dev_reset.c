
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
struct scsi_cmnd {size_t cmd_len; int* cmnd; TYPE_6__* device; } ;
struct scb {int flags; TYPE_4__* hscb; TYPE_2__* platform_data; scalar_t__ sg_count; struct scsi_cmnd* io_ctx; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {TYPE_5__* platform_data; int pending_scbs; int our_id; } ;
struct ahd_linux_device {int active; int commands_issued; int openings; } ;
struct TYPE_9__ {int ppr_options; } ;
struct ahd_initiator_tinfo {TYPE_3__ curr; } ;
struct TYPE_12__ {int lun; int id; TYPE_1__* host; } ;
struct TYPE_11__ {int * eh_done; } ;
struct TYPE_10__ {int control; int task_management; scalar_t__ cdb_len; int lun; int scsiid; } ;
struct TYPE_8__ {scalar_t__ xfer_len; struct ahd_linux_device* dev; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;


 int AHD_NEVER_COL_IDX ;
 int BUILD_SCSIID (struct ahd_softc*,struct scsi_cmnd*) ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int FAILED ;
 int FALSE ;
 int HZ ;
 int KERN_INFO ;
 int LIST_INSERT_HEAD (int *,struct scb*,int ) ;
 int MK_MESSAGE ;
 int MSG_EXT_PPR_IU_REQ ;
 int SCB_ACTIVE ;
 int SCB_DEVICE_RESET ;
 int SCB_PACKETIZED ;
 int SCB_RECOVERY_SCB ;
 int SIU_TASKMGMT_LUN_RESET ;
 int SUCCESS ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,char,int ,int ,struct ahd_tmode_tstate**) ;
 struct scb* ahd_get_scb (struct ahd_softc*,int ) ;
 int ahd_lock (struct ahd_softc*,unsigned long*) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_queue_scb (struct ahd_softc*,struct scb*) ;
 int ahd_set_residual (struct scb*,int ) ;
 int ahd_set_sense_residual (struct scb*,int ) ;
 int ahd_unlock (struct ahd_softc*,unsigned long*) ;
 int done ;
 int pending_links ;
 int printf (char*,...) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 struct ahd_linux_device* scsi_transport_device_data (TYPE_6__*) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int
ahd_linux_dev_reset(struct scsi_cmnd *cmd)
{
 struct ahd_softc *ahd;
 struct ahd_linux_device *dev;
 struct scb *reset_scb;
 u_int cdb_byte;
 int retval = SUCCESS;
 int paused;
 int wait;
 struct ahd_initiator_tinfo *tinfo;
 struct ahd_tmode_tstate *tstate;
 unsigned long flags;
 DECLARE_COMPLETION_ONSTACK(done);

 reset_scb = ((void*)0);
 paused = FALSE;
 wait = FALSE;
 ahd = *(struct ahd_softc **)cmd->device->host->hostdata;

 scmd_printk(KERN_INFO, cmd,
      "Attempting to queue a TARGET RESET message:");

 printf("CDB:");
 for (cdb_byte = 0; cdb_byte < cmd->cmd_len; cdb_byte++)
  printf(" 0x%x", cmd->cmnd[cdb_byte]);
 printf("\n");




 dev = scsi_transport_device_data(cmd->device);

 if (dev == ((void*)0)) {




  scmd_printk(KERN_INFO, cmd, "Is not an active device\n");
  return SUCCESS;
 }




 reset_scb = ahd_get_scb(ahd, AHD_NEVER_COL_IDX);
 if (!reset_scb) {
  scmd_printk(KERN_INFO, cmd, "No SCB available\n");
  return FAILED;
 }

 tinfo = ahd_fetch_transinfo(ahd, 'A', ahd->our_id,
        cmd->device->id, &tstate);
 reset_scb->io_ctx = cmd;
 reset_scb->platform_data->dev = dev;
 reset_scb->sg_count = 0;
 ahd_set_residual(reset_scb, 0);
 ahd_set_sense_residual(reset_scb, 0);
 reset_scb->platform_data->xfer_len = 0;
 reset_scb->hscb->control = 0;
 reset_scb->hscb->scsiid = BUILD_SCSIID(ahd,cmd);
 reset_scb->hscb->lun = cmd->device->lun;
 reset_scb->hscb->cdb_len = 0;
 reset_scb->hscb->task_management = SIU_TASKMGMT_LUN_RESET;
 reset_scb->flags |= SCB_DEVICE_RESET|SCB_RECOVERY_SCB|SCB_ACTIVE;
 if ((tinfo->curr.ppr_options & MSG_EXT_PPR_IU_REQ) != 0) {
  reset_scb->flags |= SCB_PACKETIZED;
 } else {
  reset_scb->hscb->control |= MK_MESSAGE;
 }
 dev->openings--;
 dev->active++;
 dev->commands_issued++;

 ahd_lock(ahd, &flags);

 LIST_INSERT_HEAD(&ahd->pending_scbs, reset_scb, pending_links);
 ahd_queue_scb(ahd, reset_scb);

 ahd->platform_data->eh_done = &done;
 ahd_unlock(ahd, &flags);

 printf("%s: Device reset code sleeping\n", ahd_name(ahd));
 if (!wait_for_completion_timeout(&done, 5 * HZ)) {
  ahd_lock(ahd, &flags);
  ahd->platform_data->eh_done = ((void*)0);
  ahd_unlock(ahd, &flags);
  printf("%s: Device reset timer expired (active %d)\n",
         ahd_name(ahd), dev->active);
  retval = FAILED;
 }
 printf("%s: Device reset returning 0x%x\n", ahd_name(ahd), retval);

 return (retval);
}
