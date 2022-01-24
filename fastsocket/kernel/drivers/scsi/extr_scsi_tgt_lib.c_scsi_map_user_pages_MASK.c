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
struct scsi_tgt_cmd {int /*<<< orphan*/  bio; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;
struct scsi_cmnd {TYPE_1__ sdb; struct request* request; } ;
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  bio; struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int FUNC1 (struct request_queue*,struct request*,int /*<<< orphan*/ *,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_tgt_cmd*) ; 

__attribute__((used)) static int FUNC7(struct scsi_tgt_cmd *tcmd, struct scsi_cmnd *cmd,
			       unsigned long uaddr, unsigned int len, int rw)
{
	struct request_queue *q = cmd->request->q;
	struct request *rq = cmd->request;
	int err;

	FUNC2("%lx %u\n", uaddr, len);
	err = FUNC1(q, rq, NULL, (void *)uaddr, len, GFP_KERNEL);
	if (err) {
		/*
		 * TODO: need to fixup sg_tablesize, max_segment_size,
		 * max_sectors, etc for modern HW and software drivers
		 * where this value is bogus.
		 *
		 * TODO2: we can alloc a reserve buffer of max size
		 * we can handle and do the slow copy path for really large
		 * IO.
		 */
		FUNC3("Could not handle request of size %u.\n", len);
		return err;
	}

	tcmd->bio = rq->bio;
	err = FUNC4(cmd, GFP_KERNEL);
	if (err) {
		FUNC5(cmd);
		goto unmap_rq;
	}
	/*
	 * we use REQ_TYPE_BLOCK_PC so scsi_init_io doesn't set the
	 * length for us.
	 */
	cmd->sdb.length = FUNC0(rq);

	return 0;

unmap_rq:
	FUNC6(tcmd);
	return err;
}