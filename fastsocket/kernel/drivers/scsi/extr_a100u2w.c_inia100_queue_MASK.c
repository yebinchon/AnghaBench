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
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct orc_scb {int dummy; } ;
struct orc_host {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int SCSI_MLQUEUE_HOST_BUSY ; 
 scalar_t__ FUNC0 (struct orc_host*,struct orc_scb*,struct scsi_cmnd*) ; 
 struct orc_scb* FUNC1 (struct orc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct orc_host*,struct orc_scb*) ; 
 int /*<<< orphan*/  FUNC3 (struct orc_host*,struct orc_scb*) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd * cmd, void (*done) (struct scsi_cmnd *))
{
	struct orc_scb *scb;
	struct orc_host *host;		/* Point to Host adapter control block */

	host = (struct orc_host *) cmd->device->host->hostdata;
	cmd->scsi_done = done;
	/* Get free SCSI control block  */
	if ((scb = FUNC1(host)) == NULL)
		return SCSI_MLQUEUE_HOST_BUSY;

	if (FUNC0(host, scb, cmd)) {
		FUNC3(host, scb);
		return SCSI_MLQUEUE_HOST_BUSY;
	}
	FUNC2(host, scb);	/* Start execute SCB            */
	return 0;
}