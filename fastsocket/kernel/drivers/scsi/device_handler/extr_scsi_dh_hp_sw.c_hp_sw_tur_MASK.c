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
struct scsi_device {int /*<<< orphan*/  request_queue; } ;
struct request {int cmd_flags; scalar_t__ sense_len; int /*<<< orphan*/  errors; int /*<<< orphan*/  q; int /*<<< orphan*/  sense; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmd_type; } ;
struct hp_sw_dh_data {int /*<<< orphan*/  path_state; int /*<<< orphan*/  sense; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  HP_SW_NAME ; 
 int /*<<< orphan*/  HP_SW_PATH_ACTIVE ; 
 int /*<<< orphan*/  HP_SW_PATH_PASSIVE ; 
 int /*<<< orphan*/  HP_SW_TIMEOUT ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int REQ_FAILFAST_DEV ; 
 int REQ_FAILFAST_DRIVER ; 
 int REQ_FAILFAST_TRANSPORT ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 int SCSI_DH_DEV_OFFLINED ; 
 int SCSI_DH_IMM_RETRY ; 
 int SCSI_DH_IO ; 
 int SCSI_DH_OK ; 
 int SCSI_DH_RES_TEMP_UNAVAIL ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  TEST_UNIT_READY ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 struct request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct scsi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_device *sdev, struct hp_sw_dh_data *h)
{
	struct request *req;
	int ret;

retry:
	req = FUNC2(sdev->request_queue, WRITE, GFP_NOIO);
	if (!req)
		return SCSI_DH_RES_TEMP_UNAVAIL;

	req->cmd_type = REQ_TYPE_BLOCK_PC;
	req->cmd_flags |= REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
			  REQ_FAILFAST_DRIVER;
	req->cmd_len = FUNC0(TEST_UNIT_READY);
	req->cmd[0] = TEST_UNIT_READY;
	req->timeout = HP_SW_TIMEOUT;
	req->sense = h->sense;
	FUNC4(req->sense, 0, SCSI_SENSE_BUFFERSIZE);
	req->sense_len = 0;

	ret = FUNC1(req->q, NULL, req, 1);
	if (ret == -EIO) {
		if (req->sense_len > 0) {
			ret = FUNC6(sdev, h->sense);
		} else {
			FUNC5(KERN_WARNING, sdev,
				    "%s: sending tur failed with %x\n",
				    HP_SW_NAME, req->errors);
			ret = SCSI_DH_IO;
		}
	} else {
		h->path_state = HP_SW_PATH_ACTIVE;
		ret = SCSI_DH_OK;
	}
	if (ret == SCSI_DH_IMM_RETRY) {
		FUNC3(req);
		goto retry;
	}
	if (ret == SCSI_DH_DEV_OFFLINED) {
		h->path_state = HP_SW_PATH_PASSIVE;
		ret = SCSI_DH_OK;
	}

	FUNC3(req);

	return ret;
}