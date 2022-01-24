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
struct scsi_cmnd {char* cmnd; int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct fib {int dummy; } ;
struct aac_get_serial_resp {int /*<<< orphan*/  uid; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  sp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int COMMAND_COMPLETE ; 
 scalar_t__ CT_OK ; 
 int DID_OK ; 
 char INQD_PDT_DA ; 
 int SAM_STAT_GOOD ; 
 int /*<<< orphan*/  FUNC1 (struct fib*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,struct fib*) ; 
 scalar_t__ FUNC4 (struct fib*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,char*,int) ; 
 char FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC9(void *context, struct fib * fibptr)
{
	struct aac_get_serial_resp * get_serial_reply;
	struct scsi_cmnd * scsicmd;

	FUNC0(fibptr == NULL);

	scsicmd = (struct scsi_cmnd *) context;
	if (!FUNC3(scsicmd, fibptr))
		return;

	get_serial_reply = (struct aac_get_serial_resp *) FUNC4(fibptr);
	/* Failure is irrelevant, using default value instead */
	if (FUNC5(get_serial_reply->status) == CT_OK) {
		char sp[13];
		/* EVPD bit set */
		sp[0] = INQD_PDT_DA;
		sp[1] = scsicmd->cmnd[2];
		sp[2] = 0;
		sp[3] = FUNC7(sp+4, sizeof(sp)-4, "%08X",
		  FUNC5(get_serial_reply->uid));
		FUNC6(scsicmd, sp, sizeof(sp));
	}

	scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8 | SAM_STAT_GOOD;

	FUNC1(fibptr);
	FUNC2(fibptr);
	scsicmd->scsi_done(scsicmd);
}