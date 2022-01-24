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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct nvme_queue {size_t sq_tail; size_t q_depth; int /*<<< orphan*/  dev; int /*<<< orphan*/  q_db; struct nvme_command* sq_cmds; } ;
struct nvme_ns {int lba_shift; int /*<<< orphan*/  ns_id; int /*<<< orphan*/  queue; } ;
struct nvme_iod {struct bio* private; } ;
struct TYPE_2__ {int command_id; void* dsmgmt; void* control; void* length; int /*<<< orphan*/  slba; void* nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ rw; int /*<<< orphan*/  common; } ;
struct bio {int bi_rw; int /*<<< orphan*/  bi_sector; int /*<<< orphan*/  bi_size; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int BIO_RW_AHEAD ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NVME_IO_TIMEOUT ; 
 int /*<<< orphan*/  NVME_RW_DSM_FREQ_PREFETCH ; 
 int NVME_RW_FUA ; 
 int NVME_RW_LR ; 
 int REQ_FAILFAST_DEV ; 
 int REQ_FLUSH ; 
 int REQ_FUA ; 
 int FUNC0 (struct nvme_queue*,struct nvme_iod*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_completion ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_queue*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 struct nvme_iod* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_ns*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_cmd_read ; 
 int /*<<< orphan*/  nvme_cmd_write ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct nvme_iod*) ; 
 int FUNC11 (struct nvme_queue*,struct nvme_iod*,struct bio*,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nvme_iod*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bio*) ; 
 int FUNC14 (struct nvme_queue*,struct nvme_ns*,struct bio*,struct nvme_iod*,int) ; 
 int FUNC15 (struct nvme_queue*,struct nvme_ns*,int) ; 
 int FUNC16 (struct nvme_queue*,struct nvme_ns*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct nvme_queue *nvmeq, struct nvme_ns *ns,
								struct bio *bio)
{
	struct nvme_command *cmnd;
	struct nvme_iod *iod;
	enum dma_data_direction dma_dir;
	int cmdid, length, result;
	u16 control;
	u32 dsmgmt;
	int psegs = FUNC2(ns->queue, bio);

	if ((bio->bi_rw & REQ_FLUSH) && psegs) {
		result = FUNC16(nvmeq, ns);
		if (result)
			return result;
	}

	result = -ENOMEM;
	iod = FUNC8(psegs, bio->bi_size, GFP_ATOMIC);
	if (!iod)
		goto nomem;
	iod->private = bio;

	result = -EBUSY;
	cmdid = FUNC0(nvmeq, iod, bio_completion, NVME_IO_TIMEOUT);
	if (FUNC17(cmdid < 0))
		goto free_iod;

	if (bio->bi_rw & BIO_DISCARD) {
		result = FUNC14(nvmeq, ns, bio, iod, cmdid);
		if (result)
			goto free_cmdid;
		return result;
	}
	if ((bio->bi_rw & REQ_FLUSH) && !psegs)
		return FUNC15(nvmeq, ns, cmdid);

	control = 0;
	if (bio->bi_rw & REQ_FUA)
		control |= NVME_RW_FUA;
	if (bio->bi_rw & (REQ_FAILFAST_DEV | BIO_RW_AHEAD))
		control |= NVME_RW_LR;

	dsmgmt = 0;
	if (bio->bi_rw & BIO_RW_AHEAD)
		dsmgmt |= NVME_RW_DSM_FREQ_PREFETCH;

	cmnd = &nvmeq->sq_cmds[nvmeq->sq_tail];

	FUNC7(cmnd, 0, sizeof(*cmnd));
	if (FUNC1(bio)) {
		cmnd->rw.opcode = nvme_cmd_write;
		dma_dir = DMA_TO_DEVICE;
	} else {
		cmnd->rw.opcode = nvme_cmd_read;
		dma_dir = DMA_FROM_DEVICE;
	}

	result = FUNC11(nvmeq, iod, bio, dma_dir, psegs);
	if (result <= 0)
		goto free_cmdid;
	length = result;

	cmnd->rw.command_id = cmdid;
	cmnd->rw.nsid = FUNC4(ns->ns_id);
	length = FUNC12(nvmeq->dev, &cmnd->common, iod, length,
								GFP_ATOMIC);
	cmnd->rw.slba = FUNC5(FUNC9(ns, bio->bi_sector));
	cmnd->rw.length = FUNC3((length >> ns->lba_shift) - 1);
	cmnd->rw.control = FUNC3(control);
	cmnd->rw.dsmgmt = FUNC4(dsmgmt);

	FUNC13(bio);
	if (++nvmeq->sq_tail == nvmeq->q_depth)
		nvmeq->sq_tail = 0;
	FUNC18(nvmeq->sq_tail, nvmeq->q_db);

	return 0;

 free_cmdid:
	FUNC6(nvmeq, cmdid, NULL);
 free_iod:
	FUNC10(nvmeq->dev, iod);
 nomem:
	return result;
}