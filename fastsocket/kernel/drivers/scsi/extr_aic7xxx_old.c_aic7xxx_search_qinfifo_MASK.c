#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aic7xxx_scb {int flags; int tag_action; TYPE_2__* hscb; int /*<<< orphan*/  cmd; } ;
struct aic7xxx_host {unsigned char qinfifonext; size_t* qinfifo; int features; int /*<<< orphan*/  activescbs; int /*<<< orphan*/  volatile waiting_scbs; TYPE_1__* scb_data; } ;
typedef  int /*<<< orphan*/  scb_queue_type ;
struct TYPE_6__ {int /*<<< orphan*/  active_cmds; int /*<<< orphan*/  volatile delayed_scbs; } ;
struct TYPE_5__ {size_t tag; int /*<<< orphan*/  target_channel_lun; } ;
struct TYPE_4__ {struct aic7xxx_scb** scb_array; } ;

/* Variables and functions */
 int AHC_QUEUE_REGS ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HNSCB_QOFF ; 
 int /*<<< orphan*/  KERNEL_QINPOS ; 
 int /*<<< orphan*/  QINPOS ; 
 size_t SCB_LIST_NULL ; 
 int SCB_RECOVERY_SCB ; 
 int SCB_WAITINGQ ; 
 int TAG_ENB ; 
 int /*<<< orphan*/  TRUE ; 
 size_t FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct aic7xxx_host*,struct aic7xxx_scb*,int,int,int,unsigned char) ; 
 unsigned char FUNC3 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aic7xxx_host*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  volatile*,struct aic7xxx_scb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  volatile*,struct aic7xxx_scb*) ; 

__attribute__((used)) static int
FUNC7(struct aic7xxx_host *p, int target, int channel,
    int lun, unsigned char tag, int flags, int requeue,
    volatile scb_queue_type *queue)
{
  int      found;
  unsigned char qinpos, qintail;
  struct aic7xxx_scb *scbp;

  found = 0;
  qinpos = FUNC3(p, QINPOS);
  qintail = p->qinfifonext;

  p->qinfifonext = qinpos;

  while (qinpos != qintail)
  {
    scbp = p->scb_data->scb_array[p->qinfifo[qinpos++]];
    if (FUNC2(p, scbp, target, channel, lun, tag))
    {
       /*
        * We found an scb that needs to be removed.
        */
       if (requeue && (queue != NULL))
       {
         if (scbp->flags & SCB_WAITINGQ)
         {
           FUNC6(queue, scbp);
           FUNC6(&p->waiting_scbs, scbp);
           FUNC6(&FUNC0(scbp->cmd)->delayed_scbs, scbp);
           FUNC0(scbp->cmd)->active_cmds++;
           p->activescbs++;
         }
         FUNC5(queue, scbp);
         FUNC0(scbp->cmd)->active_cmds--;
         p->activescbs--;
         scbp->flags |= SCB_WAITINGQ;
         if ( !(scbp->tag_action & TAG_ENB) )
         {
           FUNC1(p, scbp->hscb->target_channel_lun,
             TRUE);
         }
       }
       else if (requeue)
       {
         p->qinfifo[p->qinfifonext++] = scbp->hscb->tag;
       }
       else
       {
        /*
         * Preserve any SCB_RECOVERY_SCB flags on this scb then set the
         * flags we were called with, presumeably so aic7xxx_run_done_queue
         * can find this scb
         */
         scbp->flags = flags | (scbp->flags & SCB_RECOVERY_SCB);
         if (FUNC1(p, scbp->hscb->target_channel_lun,
                                       FALSE) == scbp->hscb->tag)
         {
           FUNC1(p, scbp->hscb->target_channel_lun,
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
  /*
   * Now that we've done the work, clear out any left over commands in the
   * qinfifo and update the KERNEL_QINPOS down on the card.
   *
   *  NOTE: This routine expect the sequencer to already be paused when
   *        it is run....make sure it's that way!
   */
  qinpos = p->qinfifonext;
  while(qinpos != qintail)
  {
    p->qinfifo[qinpos++] = SCB_LIST_NULL;
  }
  if (p->features & AHC_QUEUE_REGS)
    FUNC4(p, p->qinfifonext, HNSCB_QOFF);
  else
    FUNC4(p, p->qinfifonext, KERNEL_QINPOS);

  return (found);
}