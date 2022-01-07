
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; } ;
struct aic_dev_data {int dummy; } ;
struct aic7xxx_scb {struct scsi_cmnd* cmd; } ;
struct aic7xxx_host {int flags; int features; TYPE_4__* host; scalar_t__ msg_len; scalar_t__ msg_index; int msg_type; TYPE_2__* scb_data; } ;
struct TYPE_8__ {int host_lock; } ;
struct TYPE_7__ {int channel; TYPE_1__* host; } ;
struct TYPE_6__ {size_t numscbs; struct aic7xxx_scb** scb_array; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;


 int AHC_HANDLING_REQINITS ;
 int AHC_IN_ISR ;
 int AHC_TWIN ;
 struct aic_dev_data* AIC_DEV (struct scsi_cmnd*) ;
 int ENBUSFREE ;
 int ENREQINIT ;
 int FALSE ;
 int INTSTAT ;
 int INT_PEND ;
 int MSG_TYPE_NONE ;
 int SIMODE1 ;
 int SUCCESS ;
 int TRUE ;
 int aic7xxx_clear_intstat (struct aic7xxx_host*) ;
 int aic7xxx_done_cmds_complete (struct aic7xxx_host*) ;
 int aic7xxx_isr (struct aic7xxx_host*) ;
 int aic7xxx_panic_abort (struct aic7xxx_host*,struct scsi_cmnd*) ;
 scalar_t__ aic7xxx_panic_on_abort ;
 size_t aic7xxx_position (struct scsi_cmnd*) ;
 int aic7xxx_reset_channel (struct aic7xxx_host*,int,int ) ;
 int aic7xxx_run_done_queue (struct aic7xxx_host*,int ) ;
 int aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,int,int ) ;
 int pause_sequencer (struct aic7xxx_host*) ;
 int restart_sequencer (struct aic7xxx_host*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int ssleep (int) ;
 int unpause_sequencer (struct aic7xxx_host*,int ) ;

__attribute__((used)) static int aic7xxx_reset(struct scsi_cmnd *cmd)
{
  struct aic7xxx_scb *scb;
  struct aic7xxx_host *p;
  struct aic_dev_data *aic_dev;

  p = (struct aic7xxx_host *) cmd->device->host->hostdata;
  spin_lock_irq(p->host->host_lock);

  aic_dev = AIC_DEV(cmd);
  if(aic7xxx_position(cmd) < p->scb_data->numscbs)
  {
    scb = (p->scb_data->scb_array[aic7xxx_position(cmd)]);
    if (scb->cmd != cmd)
      scb = ((void*)0);
  }
  else
  {
    scb = ((void*)0);
  }
  if (aic7xxx_panic_on_abort)
    aic7xxx_panic_abort(p, cmd);

  pause_sequencer(p);

  while((aic_inb(p, INTSTAT) & INT_PEND) && !(p->flags & AHC_IN_ISR))
  {
    aic7xxx_isr(p);
    pause_sequencer(p);
  }
  aic7xxx_done_cmds_complete(p);

  if(scb && (scb->cmd == ((void*)0)))
  {




    unpause_sequencer(p, FALSE);
    spin_unlock_irq(p->host->host_lock);
    return SUCCESS;
  }





  aic7xxx_reset_channel(p, cmd->device->channel, TRUE);
  if (p->features & AHC_TWIN)
  {
    aic7xxx_reset_channel(p, cmd->device->channel ^ 0x01, TRUE);
    restart_sequencer(p);
  }
  aic_outb(p, aic_inb(p, SIMODE1) & ~(ENREQINIT|ENBUSFREE), SIMODE1);
  aic7xxx_clear_intstat(p);
  p->flags &= ~AHC_HANDLING_REQINITS;
  p->msg_type = MSG_TYPE_NONE;
  p->msg_index = 0;
  p->msg_len = 0;
  aic7xxx_run_done_queue(p, TRUE);
  unpause_sequencer(p, FALSE);
  spin_unlock_irq(p->host->host_lock);
  ssleep(2);
  return SUCCESS;
}
