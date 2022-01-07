
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_17__ ;
typedef struct TYPE_28__ TYPE_10__ ;


struct timeval {int tv_sec; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct TYPE_32__ {scalar_t__ reserved4; scalar_t__ reserved3; scalar_t__ reserved2; scalar_t__ reserved; int state; int command_id; void* op_code; } ;
struct TYPE_33__ {TYPE_3__ flush_cache; } ;
struct TYPE_36__ {TYPE_10__* scsi_cmd; TYPE_4__ cmd; void** cdb; int timeout; } ;
typedef TYPE_7__ ips_scb_t ;
struct TYPE_34__ {int (* reset ) (TYPE_8__*) ;} ;
struct TYPE_29__ {TYPE_9__* head; } ;
struct TYPE_37__ {scalar_t__ ioctl_reset; int max_cmds; int nbus; scalar_t__ num_ioctl; scalar_t__* dcdb_active; int scb_activelist; int host_num; int reset_count; int last_ffdc; TYPE_6__* subsys; void* active; int scb_waitlist; int pcidev; TYPE_5__ func; TYPE_7__* scbs; TYPE_17__ copp_waitlist; } ;
typedef TYPE_8__ ips_ha_t ;
struct TYPE_38__ {struct TYPE_38__* next; struct scsi_cmnd* scsi_cmd; } ;
typedef TYPE_9__ ips_copp_wait_item_t ;
struct TYPE_35__ {int * param; } ;
struct TYPE_31__ {TYPE_1__* host; } ;
struct TYPE_30__ {scalar_t__ hostdata; } ;
struct TYPE_28__ {int result; int (* scsi_done ) (TYPE_10__*) ;} ;


 int DEBUG (int,char*) ;
 int DEBUG_VAR (int,char*,int ,int ) ;
 int DID_ERROR ;
 int DID_RESET ;
 int FAILED ;
 void* FALSE ;
 void* IPS_CMD_FLUSH ;
 int IPS_COMMAND_ID (TYPE_8__*,TYPE_7__*) ;
 int IPS_INTR_IORL ;
 int IPS_NORM_STATE ;
 int IPS_PRINTK (int ,int ,char*) ;
 int IPS_SUCCESS ;
 int KERN_NOTICE ;
 int METHOD_TRACE (char*,int) ;
 int SUCCESS ;
 int do_gettimeofday (struct timeval*) ;
 int ips_clear_adapter (TYPE_8__*,int ) ;
 int ips_cmd_timeout ;
 int ips_ffdc_reset (TYPE_8__*,int ) ;
 int ips_freescb (TYPE_8__*,TYPE_7__*) ;
 int ips_init_scb (TYPE_8__*,TYPE_7__*) ;
 int ips_name ;
 int ips_next (TYPE_8__*,int ) ;
 int ips_removeq_copp (TYPE_17__*,TYPE_9__*) ;
 TYPE_7__* ips_removeq_scb_head (int *) ;
 scalar_t__ ips_removeq_wait (int *,struct scsi_cmnd*) ;
 struct scsi_cmnd* ips_removeq_wait_head (int *) ;
 int ips_send_wait (TYPE_8__*,TYPE_7__*,int ,int ) ;
 int le32_to_cpu (int ) ;
 int stub1 (TYPE_8__*) ;
 int stub2 (TYPE_10__*) ;
 int stub3 (struct scsi_cmnd*) ;
 int stub4 (TYPE_10__*) ;
 int stub5 (struct scsi_cmnd*) ;
 int stub6 (TYPE_10__*) ;

__attribute__((used)) static int __ips_eh_reset(struct scsi_cmnd *SC)
{
 int ret;
 int i;
 ips_ha_t *ha;
 ips_scb_t *scb;
 ips_copp_wait_item_t *item;

 METHOD_TRACE("ips_eh_reset", 1);





 if (!SC) {
  DEBUG(1, "Reset called with NULL scsi command");

  return (FAILED);
 }

 ha = (ips_ha_t *) SC->device->host->hostdata;

 if (!ha) {
  DEBUG(1, "Reset called with NULL ha struct");

  return (FAILED);
 }

 if (!ha->active)
  return (FAILED);


 item = ha->copp_waitlist.head;
 while ((item) && (item->scsi_cmd != SC))
  item = item->next;

 if (item) {

  ips_removeq_copp(&ha->copp_waitlist, item);
  return (SUCCESS);
 }


 if (ips_removeq_wait(&ha->scb_waitlist, SC)) {

  return (SUCCESS);
 }
 if (ha->ioctl_reset == 0) {
  scb = &ha->scbs[ha->max_cmds - 1];

  ips_init_scb(ha, scb);

  scb->timeout = ips_cmd_timeout;
  scb->cdb[0] = IPS_CMD_FLUSH;

  scb->cmd.flush_cache.op_code = IPS_CMD_FLUSH;
  scb->cmd.flush_cache.command_id = IPS_COMMAND_ID(ha, scb);
  scb->cmd.flush_cache.state = IPS_NORM_STATE;
  scb->cmd.flush_cache.reserved = 0;
  scb->cmd.flush_cache.reserved2 = 0;
  scb->cmd.flush_cache.reserved3 = 0;
  scb->cmd.flush_cache.reserved4 = 0;


  ret = ips_send_wait(ha, scb, ips_cmd_timeout, IPS_INTR_IORL);
  if (ret == IPS_SUCCESS) {
   IPS_PRINTK(KERN_NOTICE, ha->pcidev,
       "Reset Request - Flushed Cache\n");
   return (SUCCESS);
  }
 }




 ha->ioctl_reset = 0;





 IPS_PRINTK(KERN_NOTICE, ha->pcidev, "Resetting controller.\n");
 ret = (*ha->func.reset) (ha);

 if (!ret) {
  struct scsi_cmnd *scsi_cmd;

  IPS_PRINTK(KERN_NOTICE, ha->pcidev,
      "Controller reset failed - controller now offline.\n");


  DEBUG_VAR(1, "(%s%d) Failing active commands",
     ips_name, ha->host_num);

  while ((scb = ips_removeq_scb_head(&ha->scb_activelist))) {
   scb->scsi_cmd->result = DID_ERROR << 16;
   scb->scsi_cmd->scsi_done(scb->scsi_cmd);
   ips_freescb(ha, scb);
  }


  DEBUG_VAR(1, "(%s%d) Failing pending commands",
     ips_name, ha->host_num);

  while ((scsi_cmd = ips_removeq_wait_head(&ha->scb_waitlist))) {
   scsi_cmd->result = DID_ERROR;
   scsi_cmd->scsi_done(scsi_cmd);
  }

  ha->active = FALSE;
  return (FAILED);
 }

 if (!ips_clear_adapter(ha, IPS_INTR_IORL)) {
  struct scsi_cmnd *scsi_cmd;

  IPS_PRINTK(KERN_NOTICE, ha->pcidev,
      "Controller reset failed - controller now offline.\n");


  DEBUG_VAR(1, "(%s%d) Failing active commands",
     ips_name, ha->host_num);

  while ((scb = ips_removeq_scb_head(&ha->scb_activelist))) {
   scb->scsi_cmd->result = DID_ERROR << 16;
   scb->scsi_cmd->scsi_done(scb->scsi_cmd);
   ips_freescb(ha, scb);
  }


  DEBUG_VAR(1, "(%s%d) Failing pending commands",
     ips_name, ha->host_num);

  while ((scsi_cmd = ips_removeq_wait_head(&ha->scb_waitlist))) {
   scsi_cmd->result = DID_ERROR << 16;
   scsi_cmd->scsi_done(scsi_cmd);
  }

  ha->active = FALSE;
  return (FAILED);
 }


 if (le32_to_cpu(ha->subsys->param[3]) & 0x300000) {
  struct timeval tv;

  do_gettimeofday(&tv);
  ha->last_ffdc = tv.tv_sec;
  ha->reset_count++;
  ips_ffdc_reset(ha, IPS_INTR_IORL);
 }


 DEBUG_VAR(1, "(%s%d) Failing active commands", ips_name, ha->host_num);

 while ((scb = ips_removeq_scb_head(&ha->scb_activelist))) {
  scb->scsi_cmd->result = DID_RESET << 16;
  scb->scsi_cmd->scsi_done(scb->scsi_cmd);
  ips_freescb(ha, scb);
 }


 for (i = 1; i < ha->nbus; i++)
  ha->dcdb_active[i - 1] = 0;


 ha->num_ioctl = 0;

 ips_next(ha, IPS_INTR_IORL);

 return (SUCCESS);


}
