#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {unsigned int dma_pad_mask; } ;
struct request {scalar_t__ cmd_type; scalar_t__ bio; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/ * cmd; } ;
struct TYPE_3__ {int dma; int dev_flags; struct request_queue* queue; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_DBG_PC ; 
 int IDE_DFLAG_USING_DMA ; 
 int /*<<< orphan*/  REQ_FAILED ; 
 int /*<<< orphan*/  REQ_QUIET ; 
 scalar_t__ REQ_TYPE_BLOCK_PC ; 
 char* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (char*) ; 
 unsigned int FUNC4 (struct request_queue*) ; 

__attribute__((used)) static void FUNC5(ide_drive_t *drive, struct request *rq)
{

	FUNC2(IDE_DBG_PC, "rq->cmd[0]: 0x%x, rq->cmd_type: 0x%x",
				  rq->cmd[0], rq->cmd_type);

	if (rq->cmd_type == REQ_TYPE_BLOCK_PC)
		rq->cmd_flags |= REQ_QUIET;
	else
		rq->cmd_flags &= ~REQ_FAILED;

	drive->dma = 0;

	/* sg request */
	if (rq->bio) {
		struct request_queue *q = drive->queue;
		char *buf = FUNC0(rq->bio);
		unsigned int alignment;

		drive->dma = !!(drive->dev_flags & IDE_DFLAG_USING_DMA);

		/*
		 * check if dma is safe
		 *
		 * NOTE! The "len" and "addr" checks should possibly have
		 * separate masks.
		 */
		alignment = FUNC4(q) | q->dma_pad_mask;
		if ((unsigned long)buf & alignment
		    || FUNC1(rq) & q->dma_pad_mask
		    || FUNC3(buf))
			drive->dma = 0;
	}
}