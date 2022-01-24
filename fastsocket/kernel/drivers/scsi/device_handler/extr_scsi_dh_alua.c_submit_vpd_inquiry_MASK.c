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
struct scsi_device {int dummy; } ;
struct request {int* cmd; scalar_t__ sense_len; int /*<<< orphan*/  errors; int /*<<< orphan*/  q; int /*<<< orphan*/  sense; int /*<<< orphan*/  cmd_len; } ;
struct alua_dh_data {int bufflen; scalar_t__ senselen; int /*<<< orphan*/  sense; int /*<<< orphan*/  buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_DH_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int INQUIRY ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  READ ; 
 int SCSI_DH_IO ; 
 int SCSI_DH_RES_TEMP_UNAVAIL ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 struct request* FUNC3 (struct scsi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *sdev, struct alua_dh_data *h)
{
	struct request *rq;
	int err = SCSI_DH_RES_TEMP_UNAVAIL;

	rq = FUNC3(sdev, h->buff, h->bufflen, READ);
	if (!rq)
		goto done;

	/* Prepare the command. */
	rq->cmd[0] = INQUIRY;
	rq->cmd[1] = 1;
	rq->cmd[2] = 0x83;
	rq->cmd[4] = h->bufflen;
	rq->cmd_len = FUNC0(INQUIRY);

	rq->sense = h->sense;
	FUNC4(rq->sense, 0, SCSI_SENSE_BUFFERSIZE);
	rq->sense_len = h->senselen = 0;

	err = FUNC1(rq->q, NULL, rq, 1);
	if (err == -EIO) {
		FUNC5(KERN_INFO, sdev,
			    "%s: evpd inquiry failed with %x\n",
			    ALUA_DH_NAME, rq->errors);
		h->senselen = rq->sense_len;
		err = SCSI_DH_IO;
	}
	FUNC2(rq);
done:
	return err;
}