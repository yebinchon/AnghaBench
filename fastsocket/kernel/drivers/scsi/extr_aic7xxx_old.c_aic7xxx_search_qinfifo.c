
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct aic7xxx_scb {int flags; int tag_action; TYPE_2__* hscb; int cmd; } ;
struct aic7xxx_host {unsigned char qinfifonext; size_t* qinfifo; int features; int activescbs; int volatile waiting_scbs; TYPE_1__* scb_data; } ;
typedef int scb_queue_type ;
struct TYPE_6__ {int active_cmds; int volatile delayed_scbs; } ;
struct TYPE_5__ {size_t tag; int target_channel_lun; } ;
struct TYPE_4__ {struct aic7xxx_scb** scb_array; } ;


 int AHC_QUEUE_REGS ;
 TYPE_3__* AIC_DEV (int ) ;
 int FALSE ;
 int HNSCB_QOFF ;
 int KERNEL_QINPOS ;
 int QINPOS ;
 size_t SCB_LIST_NULL ;
 int SCB_RECOVERY_SCB ;
 int SCB_WAITINGQ ;
 int TAG_ENB ;
 int TRUE ;
 size_t aic7xxx_index_busy_target (struct aic7xxx_host*,int ,int ) ;
 scalar_t__ aic7xxx_match_scb (struct aic7xxx_host*,struct aic7xxx_scb*,int,int,int,unsigned char) ;
 unsigned char aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,unsigned char,int ) ;
 int scbq_insert_tail (int volatile*,struct aic7xxx_scb*) ;
 int scbq_remove (int volatile*,struct aic7xxx_scb*) ;

__attribute__((used)) static int
aic7xxx_search_qinfifo(struct aic7xxx_host *p, int target, int channel,
    int lun, unsigned char tag, int flags, int requeue,
    volatile scb_queue_type *queue)
{
  int found;
  unsigned char qinpos, qintail;
  struct aic7xxx_scb *scbp;

  found = 0;
  qinpos = aic_inb(p, QINPOS);
  qintail = p->qinfifonext;

  p->qinfifonext = qinpos;

  while (qinpos != qintail)
  {
    scbp = p->scb_data->scb_array[p->qinfifo[qinpos++]];
    if (aic7xxx_match_scb(p, scbp, target, channel, lun, tag))
    {



       if (requeue && (queue != ((void*)0)))
       {
         if (scbp->flags & SCB_WAITINGQ)
         {
           scbq_remove(queue, scbp);
           scbq_remove(&p->waiting_scbs, scbp);
           scbq_remove(&AIC_DEV(scbp->cmd)->delayed_scbs, scbp);
           AIC_DEV(scbp->cmd)->active_cmds++;
           p->activescbs++;
         }
         scbq_insert_tail(queue, scbp);
         AIC_DEV(scbp->cmd)->active_cmds--;
         p->activescbs--;
         scbp->flags |= SCB_WAITINGQ;
         if ( !(scbp->tag_action & TAG_ENB) )
         {
           aic7xxx_index_busy_target(p, scbp->hscb->target_channel_lun,
             TRUE);
         }
       }
       else if (requeue)
       {
         p->qinfifo[p->qinfifonext++] = scbp->hscb->tag;
       }
       else
       {





         scbp->flags = flags | (scbp->flags & SCB_RECOVERY_SCB);
         if (aic7xxx_index_busy_target(p, scbp->hscb->target_channel_lun,
                                       FALSE) == scbp->hscb->tag)
         {
           aic7xxx_index_busy_target(p, scbp->hscb->target_channel_lun,
             TRUE);
         }
       }
       found++;
    }
    else
    {
      p->qinfifo[p->qinfifonext++] = scbp->hscb->tag;
    }
  }







  qinpos = p->qinfifonext;
  while(qinpos != qintail)
  {
    p->qinfifo[qinpos++] = SCB_LIST_NULL;
  }
  if (p->features & AHC_QUEUE_REGS)
    aic_outb(p, p->qinfifonext, HNSCB_QOFF);
  else
    aic_outb(p, p->qinfifonext, KERNEL_QINPOS);

  return (found);
}
