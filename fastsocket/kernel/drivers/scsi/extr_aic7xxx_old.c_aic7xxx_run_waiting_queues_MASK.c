#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct aic_dev_data {int temp_q_depth; int active_cmds; int /*<<< orphan*/  delayed_scbs; } ;
struct aic7xxx_scb {TYPE_3__* hscb; int /*<<< orphan*/  tag_action; int /*<<< orphan*/  flags; TYPE_2__* cmd; } ;
struct TYPE_8__ {int /*<<< orphan*/ * head; } ;
struct aic7xxx_host {scalar_t__ activescbs; int features; scalar_t__ max_activescbs; int /*<<< orphan*/  qinfifonext; int /*<<< orphan*/ * qinfifo; TYPE_4__ waiting_scbs; } ;
struct TYPE_7__ {int /*<<< orphan*/  tag; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {struct aic_dev_data* hostdata; } ;

/* Variables and functions */
 int AHC_QUEUE_REGS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HNSCB_QOFF ; 
 int /*<<< orphan*/  KERNEL_QINPOS ; 
 int /*<<< orphan*/  SCB_WAITINGQ ; 
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*,struct aic7xxx_scb*) ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct aic7xxx_scb*) ; 
 struct aic7xxx_scb* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct aic7xxx_host *p)
{
  struct aic7xxx_scb *scb;
  struct aic_dev_data *aic_dev;
  int sent;


  if (p->waiting_scbs.head == NULL)
    return;

  sent = 0;

  /*
   * First handle SCBs that are waiting but have been assigned a slot.
   */
  while ((scb = FUNC4(&p->waiting_scbs)) != NULL)
  {
    aic_dev = scb->cmd->device->hostdata;
    if ( !scb->tag_action )
    {
      aic_dev->temp_q_depth = 1;
    }
    if ( aic_dev->active_cmds >= aic_dev->temp_q_depth)
    {
      FUNC3(&aic_dev->delayed_scbs, scb);
    }
    else
    {
        scb->flags &= ~SCB_WAITINGQ;
        aic_dev->active_cmds++;
        p->activescbs++;
        if ( !(scb->tag_action) )
        {
          FUNC0(p, scb);
        }
        p->qinfifo[p->qinfifonext++] = scb->hscb->tag;
        sent++;
    }
  }
  if (sent)
  {
    if (p->features & AHC_QUEUE_REGS)
      FUNC1(p, p->qinfifonext, HNSCB_QOFF);
    else
    {
      FUNC2(p);
      FUNC1(p, p->qinfifonext, KERNEL_QINPOS);
      FUNC5(p, FALSE);
    }
    if (p->activescbs > p->max_activescbs)
      p->max_activescbs = p->activescbs;
  }
}