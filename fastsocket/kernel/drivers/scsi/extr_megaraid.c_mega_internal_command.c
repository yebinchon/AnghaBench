
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct scsi_device {int host; } ;
struct TYPE_13__ {int idx; int * pthru; int raw_mbox; TYPE_4__* cmd; int state; } ;
typedef TYPE_1__ scb_t ;
struct TYPE_14__ {scalar_t__ cmd; int status; int subopcode; int opcode; } ;
typedef TYPE_2__ megacmd_t ;
typedef int mega_passthru ;
struct TYPE_15__ {int int_mtx; int int_waitq; int host; TYPE_1__* int_cdb; TYPE_1__ int_scb; } ;
typedef TYPE_3__ adapter_t ;
struct TYPE_16__ {int result; TYPE_1__* cmnd; void* host_scribble; struct scsi_device* device; } ;
typedef TYPE_4__ Scsi_Cmnd ;


 int CMDID_INT_CMDS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__ MEGA_INTERNAL_CMD ;
 scalar_t__ MEGA_MBOXCMD_PASSTHRU ;
 int SCB_ACTIVE ;
 int kfree (struct scsi_device*) ;
 struct scsi_device* kzalloc (int,int ) ;
 int mega_internal_done ;
 int megaraid_queue (TYPE_4__*,int ) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*,scalar_t__,int ,int ,int) ;
 TYPE_4__* scsi_allocate_command (int ) ;
 int scsi_free_command (int ,TYPE_4__*) ;
 scalar_t__ trace_level ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
mega_internal_command(adapter_t *adapter, megacmd_t *mc, mega_passthru *pthru)
{
 Scsi_Cmnd *scmd;
 struct scsi_device *sdev;
 scb_t *scb;
 int rval;

 scmd = scsi_allocate_command(GFP_KERNEL);
 if (!scmd)
  return -ENOMEM;






 mutex_lock(&adapter->int_mtx);

 scb = &adapter->int_scb;
 memset(scb, 0, sizeof(scb_t));

 sdev = kzalloc(sizeof(struct scsi_device), GFP_KERNEL);
 scmd->device = sdev;

 memset(adapter->int_cdb, 0, sizeof(adapter->int_cdb));
 scmd->cmnd = adapter->int_cdb;
 scmd->device->host = adapter->host;
 scmd->host_scribble = (void *)scb;
 scmd->cmnd[0] = MEGA_INTERNAL_CMD;

 scb->state |= SCB_ACTIVE;
 scb->cmd = scmd;

 memcpy(scb->raw_mbox, mc, sizeof(megacmd_t));




 if( mc->cmd == MEGA_MBOXCMD_PASSTHRU ) {

  scb->pthru = pthru;
 }

 scb->idx = CMDID_INT_CMDS;

 megaraid_queue(scmd, mega_internal_done);

 wait_for_completion(&adapter->int_waitq);

 rval = scmd->result;
 mc->status = scmd->result;
 kfree(sdev);





 if( scmd->result && trace_level ) {
  printk("megaraid: cmd [%x, %x, %x] status:[%x]\n",
   mc->cmd, mc->opcode, mc->subopcode, scmd->result);
 }

 mutex_unlock(&adapter->int_mtx);

 scsi_free_command(GFP_KERNEL, scmd);

 return rval;
}
