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
struct scsi_cmnd {TYPE_1__* request; int /*<<< orphan*/  result; } ;
struct TYPE_2__ {int cmd_flags; int /*<<< orphan*/  cmd_type; } ;

/* Variables and functions */
#define  CHECK_CONDITION 133 
 int /*<<< orphan*/  COMMAND_COMPLETE ; 
#define  DID_BUS_BUSY 132 
#define  DID_ERROR 131 
#define  DID_OK 130 
#define  DID_PARITY 129 
#define  DID_SOFT_ERROR 128 
 int REQ_FAILFAST_DEV ; 
 int REQ_FAILFAST_DRIVER ; 
 int REQ_FAILFAST_TRANSPORT ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 int RESERVATION_CONFLICT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct scsi_cmnd *scmd)
{
	switch (FUNC0(scmd->result)) {
	case DID_OK:
		break;
	case DID_BUS_BUSY:
		return (scmd->request->cmd_flags & REQ_FAILFAST_TRANSPORT);
	case DID_PARITY:
		return (scmd->request->cmd_flags & REQ_FAILFAST_DEV);
	case DID_ERROR:
		if (FUNC1(scmd->result) == COMMAND_COMPLETE &&
		    FUNC2(scmd->result) == RESERVATION_CONFLICT)
			return 0;
		/* fall through */
	case DID_SOFT_ERROR:
		return (scmd->request->cmd_flags & REQ_FAILFAST_DRIVER);
	}

	switch (FUNC2(scmd->result)) {
	case CHECK_CONDITION:
		/*
		 * assume caller has checked sense and determinted
		 * the check condition was retryable.
		 */
		if (scmd->request->cmd_flags & REQ_FAILFAST_DEV ||
		    scmd->request->cmd_type == REQ_TYPE_BLOCK_PC)
			return 1;
	}

	return 0;
}