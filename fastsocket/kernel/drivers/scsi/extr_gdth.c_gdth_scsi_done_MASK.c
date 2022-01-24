#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ request; int /*<<< orphan*/ * host_scribble; } ;
struct gdth_cmndinfo {int internal_command; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 struct gdth_cmndinfo* FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct gdth_cmndinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC5(struct scsi_cmnd *scp)
{
	struct gdth_cmndinfo *cmndinfo = FUNC2(scp);
	int internal_command = cmndinfo->internal_command;

	FUNC0(("gdth_scsi_done()\n"));

	FUNC3(cmndinfo);
	scp->host_scribble = NULL;

	if (internal_command)
		FUNC1((struct completion *)scp->request);
	else
		scp->scsi_done(scp);
}