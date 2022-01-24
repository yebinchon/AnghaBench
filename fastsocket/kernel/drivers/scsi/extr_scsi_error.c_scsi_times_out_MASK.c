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
struct scsi_cmnd {int result; TYPE_4__* device; } ;
struct request {struct scsi_cmnd* special; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_8__ {TYPE_3__* host; } ;
struct TYPE_7__ {TYPE_2__* hostt; TYPE_1__* transportt; } ;
struct TYPE_6__ {int (* eh_timed_out ) (struct scsi_cmnd*) ;} ;
struct TYPE_5__ {int (* eh_timed_out ) (struct scsi_cmnd*) ;} ;

/* Variables and functions */
 int BLK_EH_HANDLED ; 
 int BLK_EH_NOT_HANDLED ; 
 int DID_TIME_OUT ; 
 int /*<<< orphan*/  SCSI_EH_CANCEL_CMD ; 
 int /*<<< orphan*/  TIMEOUT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scsi_cmnd*) ; 
 int FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC5 (int) ; 

enum blk_eh_timer_return FUNC6(struct request *req)
{
	struct scsi_cmnd *scmd = req->special;
	enum blk_eh_timer_return rtn = BLK_EH_NOT_HANDLED;

	FUNC4(scmd);
	FUNC1(scmd, TIMEOUT_ERROR);

	if (scmd->device->host->transportt->eh_timed_out)
		rtn = scmd->device->host->transportt->eh_timed_out(scmd);
	else if (scmd->device->host->hostt->eh_timed_out)
		rtn = scmd->device->host->hostt->eh_timed_out(scmd);

	if (FUNC5(rtn == BLK_EH_NOT_HANDLED &&
		     !FUNC0(scmd, SCSI_EH_CANCEL_CMD))) {
		scmd->result |= DID_TIME_OUT << 16;
		rtn = BLK_EH_HANDLED;
	}

	return rtn;
}