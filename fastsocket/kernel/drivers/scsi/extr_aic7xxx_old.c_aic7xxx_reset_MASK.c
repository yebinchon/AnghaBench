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
struct scsi_cmnd {TYPE_3__* device; } ;
struct aic_dev_data {int dummy; } ;
struct aic7xxx_scb {struct scsi_cmnd* cmd; } ;
struct aic7xxx_host {int flags; int features; TYPE_4__* host; scalar_t__ msg_len; scalar_t__ msg_index; int /*<<< orphan*/  msg_type; TYPE_2__* scb_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_7__ {int channel; TYPE_1__* host; } ;
struct TYPE_6__ {size_t numscbs; struct aic7xxx_scb** scb_array; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int AHC_HANDLING_REQINITS ; 
 int AHC_IN_ISR ; 
 int AHC_TWIN ; 
 struct aic_dev_data* FUNC0 (struct scsi_cmnd*) ; 
 int ENBUSFREE ; 
 int ENREQINIT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INTSTAT ; 
 int INT_PEND ; 
 int /*<<< orphan*/  MSG_TYPE_NONE ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct aic7xxx_host*,struct scsi_cmnd*) ; 
 scalar_t__ aic7xxx_panic_on_abort ; 
 size_t FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct aic7xxx_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct aic7xxx_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct scsi_cmnd *cmd)
{
  struct aic7xxx_scb *scb;
  struct aic7xxx_host *p;
  struct aic_dev_data *aic_dev;

  p = (struct aic7xxx_host *) cmd->device->host->hostdata;
  FUNC12(p->host->host_lock);

  aic_dev = FUNC0(cmd);
  if(FUNC5(cmd) < p->scb_data->numscbs)
  {
    scb = (p->scb_data->scb_array[FUNC5(cmd)]);
    if (scb->cmd != cmd)
      scb = NULL;
  }
  else
  {
    scb = NULL;
  }

  /*
   * I added a new config option to the driver: "panic_on_abort" that will
   * cause the driver to panic and the machine to stop on the first abort
   * or reset call into the driver.  At that point, it prints out a lot of
   * useful information for me which I can then use to try and debug the
   * problem.  Simply enable the boot time prompt in order to activate this
   * code.
   */
  if (aic7xxx_panic_on_abort)
    FUNC4(p, cmd);

  FUNC10(p);

  while((FUNC8(p, INTSTAT) & INT_PEND) && !(p->flags & AHC_IN_ISR))
  {
    FUNC3(p);
    FUNC10(p);
  }
  FUNC2(p);

  if(scb && (scb->cmd == NULL))
  {
    /*
     * We just completed the command when we ran the isr stuff, so we no
     * longer have it.
     */
    FUNC15(p, FALSE);
    FUNC13(p->host->host_lock);
    return SUCCESS;
  }
    
/*
 *  By this point, we want to already know what we are going to do and
 *  only have the following code implement our course of action.
 */
  FUNC6(p, cmd->device->channel, TRUE);
  if (p->features & AHC_TWIN)
  {
    FUNC6(p, cmd->device->channel ^ 0x01, TRUE);
    FUNC11(p);
  }
  FUNC9(p,  FUNC8(p, SIMODE1) & ~(ENREQINIT|ENBUSFREE), SIMODE1);
  FUNC1(p);
  p->flags &= ~AHC_HANDLING_REQINITS;
  p->msg_type = MSG_TYPE_NONE;
  p->msg_index = 0;
  p->msg_len = 0;
  FUNC7(p, TRUE);
  FUNC15(p, FALSE);
  FUNC13(p->host->host_lock);
  FUNC14(2);
  return SUCCESS;
}