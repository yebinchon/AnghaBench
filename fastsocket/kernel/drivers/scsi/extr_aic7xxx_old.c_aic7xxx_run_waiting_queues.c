
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct aic_dev_data {int temp_q_depth; int active_cmds; int delayed_scbs; } ;
struct aic7xxx_scb {TYPE_3__* hscb; int tag_action; int flags; TYPE_2__* cmd; } ;
struct TYPE_8__ {int * head; } ;
struct aic7xxx_host {scalar_t__ activescbs; int features; scalar_t__ max_activescbs; int qinfifonext; int * qinfifo; TYPE_4__ waiting_scbs; } ;
struct TYPE_7__ {int tag; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {struct aic_dev_data* hostdata; } ;


 int AHC_QUEUE_REGS ;
 int FALSE ;
 int HNSCB_QOFF ;
 int KERNEL_QINPOS ;
 int SCB_WAITINGQ ;
 int aic7xxx_busy_target (struct aic7xxx_host*,struct aic7xxx_scb*) ;
 int aic_outb (struct aic7xxx_host*,int ,int ) ;
 int pause_sequencer (struct aic7xxx_host*) ;
 int scbq_insert_tail (int *,struct aic7xxx_scb*) ;
 struct aic7xxx_scb* scbq_remove_head (TYPE_4__*) ;
 int unpause_sequencer (struct aic7xxx_host*,int ) ;

__attribute__((used)) static void
aic7xxx_run_waiting_queues(struct aic7xxx_host *p)
{
  struct aic7xxx_scb *scb;
  struct aic_dev_data *aic_dev;
  int sent;


  if (p->waiting_scbs.head == ((void*)0))
    return;

  sent = 0;




  while ((scb = scbq_remove_head(&p->waiting_scbs)) != ((void*)0))
  {
    aic_dev = scb->cmd->device->hostdata;
    if ( !scb->tag_action )
    {
      aic_dev->temp_q_depth = 1;
    }
    if ( aic_dev->active_cmds >= aic_dev->temp_q_depth)
    {
      scbq_insert_tail(&aic_dev->delayed_scbs, scb);
    }
    else
    {
        scb->flags &= ~SCB_WAITINGQ;
        aic_dev->active_cmds++;
        p->activescbs++;
        if ( !(scb->tag_action) )
        {
          aic7xxx_busy_target(p, scb);
        }
        p->qinfifo[p->qinfifonext++] = scb->hscb->tag;
        sent++;
    }
  }
  if (sent)
  {
    if (p->features & AHC_QUEUE_REGS)
      aic_outb(p, p->qinfifonext, HNSCB_QOFF);
    else
    {
      pause_sequencer(p);
      aic_outb(p, p->qinfifonext, KERNEL_QINPOS);
      unpause_sequencer(p, FALSE);
    }
    if (p->activescbs > p->max_activescbs)
      p->max_activescbs = p->activescbs;
  }
}
