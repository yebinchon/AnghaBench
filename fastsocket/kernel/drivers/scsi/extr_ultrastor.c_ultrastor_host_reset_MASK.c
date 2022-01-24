#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_9__ {int mscp_free; scalar_t__ mscp_busy; scalar_t__ aborted; TYPE_2__* mscp; scalar_t__ icm_address; scalar_t__ ogm_address; scalar_t__ slot; int /*<<< orphan*/  doorbell_address; } ;
struct TYPE_8__ {int result; } ;
struct TYPE_7__ {TYPE_3__* SCint; int /*<<< orphan*/  (* done ) (TYPE_3__*) ;} ;
struct TYPE_6__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int DID_RESET ; 
 int FAILED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int ULTRASTOR_MAX_CMDS ; 
 TYPE_5__ config ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd * SCpnt)
{
    unsigned long flags;
    int i;
    struct Scsi_Host *host = SCpnt->device->host;
    
#if (ULTRASTOR_DEBUG & UD_RESET)
    printk("US14F: reset: called\n");
#endif

    if(config.slot)
    	return FAILED;

    FUNC4(host->host_lock, flags);
    /* Reset the adapter and SCSI bus.  The SCSI bus reset can be
       inhibited by clearing ultrastor_bus_reset before probe.  */
    FUNC2(0xc0, FUNC0(config.doorbell_address));
    if (config.slot)
      {
	FUNC2(0, config.ogm_address - 1);
	FUNC2(0, config.icm_address - 1);
      }

#if ULTRASTOR_MAX_CMDS == 1
    if (config.mscp_busy && config.mscp->done && config.mscp->SCint)
      {
	config.mscp->SCint->result = DID_RESET << 16;
	config.mscp->done(config.mscp->SCint);
      }
    config.mscp->SCint = 0;
#else
    for (i = 0; i < ULTRASTOR_MAX_CMDS; i++)
      {
	if (! (config.mscp_free & (1 << i)) &&
	    config.mscp[i].done && config.mscp[i].SCint)
	  {
	    config.mscp[i].SCint->result = DID_RESET << 16;
	    config.mscp[i].done(config.mscp[i].SCint);
	    config.mscp[i].done = NULL;
	  }
	config.mscp[i].SCint = NULL;
      }
#endif

    /* FIXME - if the device implements soft resets, then the command
       will still be running.  ERY  
       
       Even bigger deal with new_eh! 
     */

    FUNC1((unsigned char *)config.aborted, 0, sizeof config.aborted);
#if ULTRASTOR_MAX_CMDS == 1
    config.mscp_busy = 0;
#else
    config.mscp_free = ~0;
#endif

    FUNC5(host->host_lock, flags);
    return SUCCESS;

}