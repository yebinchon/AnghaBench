#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ request; } ;
typedef  TYPE_2__ command ;
struct TYPE_16__ {int /*<<< orphan*/  limit; int /*<<< orphan*/  start; TYPE_2__* out; TYPE_2__* in; } ;
struct TYPE_17__ {scalar_t__ pending; scalar_t__ maximum; scalar_t__ high; int /*<<< orphan*/  lock; int /*<<< orphan*/  filled; TYPE_4__ ptrs; } ;
struct TYPE_15__ {int /*<<< orphan*/  flags; TYPE_5__ cq; } ;
typedef  TYPE_3__ amb_dev ;
typedef  TYPE_4__ amb_cq_ptrs ;
typedef  TYPE_5__ amb_cq ;
struct TYPE_13__ {int /*<<< orphan*/  cmd_address; } ;
struct TYPE_18__ {TYPE_1__ adapter; } ;

/* Variables and functions */
 int DBG_CMD ; 
 int DBG_FLOW ; 
 int EAGAIN ; 
 void* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  SRB_COMPLETE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  amb_mem ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dead ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_8__ mb ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13 (amb_dev * dev, command * cmd) {
  amb_cq * cq = &dev->cq;
  volatile amb_cq_ptrs * ptrs = &cq->ptrs;
  command * my_slot;
  
  FUNC1 (DBG_FLOW|DBG_CMD, "command_do %p", dev);
  
  if (FUNC10 (dead, &dev->flags))
    return 0;
  
  FUNC8 (&cq->lock);
  
  // if not full...
  if (cq->pending < cq->maximum) {
    // remember my slot for later
    my_slot = ptrs->in;
    FUNC1 (DBG_CMD, "command in slot %p", my_slot);
    
    FUNC3 (cmd);
    
    // copy command in
    *ptrs->in = *cmd;
    cq->pending++;
    ptrs->in = FUNC0 (ptrs->in, ptrs->start, ptrs->limit);
    
    // mail the command
    FUNC12 (dev, FUNC5(amb_mem, mb.adapter.cmd_address), FUNC11 (ptrs->in));
    
    if (cq->pending > cq->high)
      cq->high = cq->pending;
    FUNC9 (&cq->lock);
    
    // these comments were in a while-loop before, msleep removes the loop
    // go to sleep
    // PRINTD (DBG_CMD, "wait: sleeping %lu for command", timeout);
    FUNC4(cq->pending);
    
    // wait for my slot to be reached (all waiters are here or above, until...)
    while (ptrs->out != my_slot) {
      FUNC1 (DBG_CMD, "wait: command slot (now at %p)", ptrs->out);
      FUNC7(TASK_UNINTERRUPTIBLE);
      FUNC6();
    }
    
    // wait on my slot (... one gets to its slot, and... )
    while (ptrs->out->request != FUNC2 (SRB_COMPLETE)) {
      FUNC1 (DBG_CMD, "wait: command slot completion");
      FUNC7(TASK_UNINTERRUPTIBLE);
      FUNC6();
    }
    
    FUNC1 (DBG_CMD, "command complete");
    // update queue (... moves the queue along to the next slot)
    FUNC8 (&cq->lock);
    cq->pending--;
    // copy command out
    *cmd = *ptrs->out;
    ptrs->out = FUNC0 (ptrs->out, ptrs->start, ptrs->limit);
    FUNC9 (&cq->lock);
    
    return 0;
  } else {
    cq->filled++;
    FUNC9 (&cq->lock);
    return -EAGAIN;
  }
  
}