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
struct request {int cmd_flags; int* cmd; int /*<<< orphan*/  q; struct hp_sw_dh_data* end_io_data; scalar_t__ sense_len; int /*<<< orphan*/  sense; int /*<<< orphan*/  timeout; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmd_type; } ;
struct hp_sw_dh_data {int /*<<< orphan*/  sense; TYPE_1__* sdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HP_SW_TIMEOUT ; 
 int REQ_FAILFAST_DEV ; 
 int REQ_FAILFAST_DRIVER ; 
 int REQ_FAILFAST_TRANSPORT ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 int SCSI_DH_OK ; 
 int SCSI_DH_RES_TEMP_UNAVAIL ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int START_STOP ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int,int /*<<< orphan*/ ) ; 
 struct request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  start_stop_endio ; 

__attribute__((used)) static int FUNC4(struct hp_sw_dh_data *h)
{
	struct request *req;

	req = FUNC2(h->sdev->request_queue, WRITE, GFP_ATOMIC);
	if (!req)
		return SCSI_DH_RES_TEMP_UNAVAIL;

	req->cmd_type = REQ_TYPE_BLOCK_PC;
	req->cmd_flags |= REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
			  REQ_FAILFAST_DRIVER;
	req->cmd_len = FUNC0(START_STOP);
	req->cmd[0] = START_STOP;
	req->cmd[4] = 1;	/* Start spin cycle */
	req->timeout = HP_SW_TIMEOUT;
	req->sense = h->sense;
	FUNC3(req->sense, 0, SCSI_SENSE_BUFFERSIZE);
	req->sense_len = 0;
	req->end_io_data = h;

	FUNC1(req->q, NULL, req, 1, start_stop_endio);
	return SCSI_DH_OK;
}