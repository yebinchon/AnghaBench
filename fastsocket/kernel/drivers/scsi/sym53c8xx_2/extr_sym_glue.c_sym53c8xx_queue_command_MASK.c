#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sym_ucmd {int dummy; } ;
struct TYPE_4__ {unsigned long settle_time; scalar_t__ settle_time_valid; } ;
struct sym_hcb {TYPE_2__ s; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* request; } ;
struct TYPE_3__ {unsigned long timeout; } ;

/* Variables and functions */
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int SYM_CONF_TIMER_INTERVAL ; 
 struct sym_hcb* FUNC0 (struct scsi_cmnd*) ; 
 struct sym_ucmd* FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct sym_ucmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct sym_hcb*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *cmd,
					void (*done)(struct scsi_cmnd *))
{
	struct sym_hcb *np = FUNC0(cmd);
	struct sym_ucmd *ucp = FUNC1(cmd);
	int sts = 0;

	cmd->scsi_done = done;
	FUNC2(ucp, 0, sizeof(*ucp));

	/*
	 *  Shorten our settle_time if needed for 
	 *  this command not to time out.
	 */
	if (np->s.settle_time_valid && cmd->request->timeout) {
		unsigned long tlimit = jiffies + cmd->request->timeout;
		tlimit -= SYM_CONF_TIMER_INTERVAL*2;
		if (FUNC4(np->s.settle_time, tlimit)) {
			np->s.settle_time = tlimit;
		}
	}

	if (np->s.settle_time_valid)
		return SCSI_MLQUEUE_HOST_BUSY;

	sts = FUNC3(np, cmd);
	if (sts)
		return SCSI_MLQUEUE_HOST_BUSY;
	return 0;
}