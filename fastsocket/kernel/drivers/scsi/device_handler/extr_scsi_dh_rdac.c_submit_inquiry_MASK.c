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
struct scsi_device {struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;
struct request {int* cmd; scalar_t__ sense_len; int /*<<< orphan*/  sense; int /*<<< orphan*/  cmd_len; } ;
struct rdac_dh_data {int /*<<< orphan*/  sense; int /*<<< orphan*/  inq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int INQUIRY ; 
 int /*<<< orphan*/  READ ; 
 int SCSI_DH_IO ; 
 int SCSI_DH_RES_TEMP_UNAVAIL ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int FUNC1 (struct request_queue*,int /*<<< orphan*/ *,struct request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 struct request* FUNC3 (struct scsi_device*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_device *sdev, int page_code,
			  unsigned int len, struct rdac_dh_data *h)
{
	struct request *rq;
	struct request_queue *q = sdev->request_queue;
	int err = SCSI_DH_RES_TEMP_UNAVAIL;

	rq = FUNC3(sdev, &h->inq, len, READ);
	if (!rq)
		goto done;

	/* Prepare the command. */
	rq->cmd[0] = INQUIRY;
	rq->cmd[1] = 1;
	rq->cmd[2] = page_code;
	rq->cmd[4] = len;
	rq->cmd_len = FUNC0(INQUIRY);

	rq->sense = h->sense;
	FUNC4(rq->sense, 0, SCSI_SENSE_BUFFERSIZE);
	rq->sense_len = 0;

	err = FUNC1(q, NULL, rq, 1);
	if (err == -EIO)
		err = SCSI_DH_IO;

	FUNC2(rq);
done:
	return err;
}