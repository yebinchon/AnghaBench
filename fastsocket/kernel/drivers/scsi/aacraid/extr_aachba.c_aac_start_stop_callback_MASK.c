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
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct fib {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int COMMAND_COMPLETE ; 
 int DID_OK ; 
 int SAM_STAT_GOOD ; 
 int /*<<< orphan*/  FUNC1 (struct fib*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,struct fib*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC5(void *context, struct fib *fibptr)
{
	struct scsi_cmnd *scsicmd = context;

	if (!FUNC3(scsicmd, fibptr))
		return;

	FUNC0(fibptr == NULL);

	scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8 | SAM_STAT_GOOD;

	FUNC1(fibptr);
	FUNC2(fibptr);
	scsicmd->scsi_done(scsicmd);
}