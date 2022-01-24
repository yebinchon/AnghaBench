#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {struct request* request; TYPE_1__* device; } ;
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_2__ {struct request_queue* request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,struct scsi_cmnd*) ; 

__attribute__((used)) static struct scsi_cmnd *FUNC7(struct scsi_cmnd *cmd, int error,
					  int bytes, int requeue)
{
	struct request_queue *q = cmd->device->request_queue;
	struct request *req = cmd->request;

	/*
	 * If there are blocks left over at the end, set up the command
	 * to queue the remainder of them.
	 */
	if (FUNC1(req, error, bytes)) {
		/* kill remainder if no retrys */
		if (error && FUNC4(cmd))
			FUNC2(req, error);
		else {
			if (requeue) {
				/*
				 * Bleah.  Leftovers again.  Stick the
				 * leftovers in the front of the
				 * queue, and goose the queue again.
				 */
				FUNC5(cmd);
				FUNC6(q, cmd);
				cmd = NULL;
			}
			return cmd;
		}
	}

	/*
	 * This will goose the queue request function at the end, so we don't
	 * need to worry about launching another command.
	 */
	FUNC0(cmd, 0);
	FUNC3(cmd);
	return NULL;
}