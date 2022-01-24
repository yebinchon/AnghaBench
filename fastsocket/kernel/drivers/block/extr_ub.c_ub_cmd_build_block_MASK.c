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
struct ub_scsi_cmd {scalar_t__ dir; int nsg; unsigned int* cdb; int cdb_len; int /*<<< orphan*/  len; int /*<<< orphan*/  sgv; } ;
struct ub_request {int nsg; int /*<<< orphan*/  sgv; struct request* rq; } ;
struct TYPE_2__ {unsigned int bshift; } ;
struct ub_lun {TYPE_1__ capacity; } ;
struct ub_dev {int dummy; } ;
struct scatterlist {int dummy; } ;
struct request {int dummy; } ;

/* Variables and functions */
 unsigned int READ_10 ; 
 scalar_t__ UB_DIR_READ ; 
 scalar_t__ UB_DIR_WRITE ; 
 scalar_t__ WRITE ; 
 unsigned int WRITE_10 ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 unsigned int FUNC1 (struct request*) ; 
 unsigned int FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct request*) ; 

__attribute__((used)) static void FUNC5(struct ub_dev *sc, struct ub_lun *lun,
    struct ub_scsi_cmd *cmd, struct ub_request *urq)
{
	struct request *rq = urq->rq;
	unsigned int block, nblks;

	if (FUNC4(rq) == WRITE)
		cmd->dir = UB_DIR_WRITE;
	else
		cmd->dir = UB_DIR_READ;

	cmd->nsg = urq->nsg;
	FUNC3(cmd->sgv, urq->sgv, sizeof(struct scatterlist) * cmd->nsg);

	/*
	 * build the command
	 *
	 * The call to blk_queue_logical_block_size() guarantees that request
	 * is aligned, but it is given in terms of 512 byte units, always.
	 */
	block = FUNC1(rq) >> lun->capacity.bshift;
	nblks = FUNC2(rq) >> lun->capacity.bshift;

	cmd->cdb[0] = (cmd->dir == UB_DIR_READ)? READ_10: WRITE_10;
	/* 10-byte uses 4 bytes of LBA: 2147483648KB, 2097152MB, 2048GB */
	cmd->cdb[2] = block >> 24;
	cmd->cdb[3] = block >> 16;
	cmd->cdb[4] = block >> 8;
	cmd->cdb[5] = block;
	cmd->cdb[7] = nblks >> 8;
	cmd->cdb[8] = nblks;
	cmd->cdb_len = 10;

	cmd->len = FUNC0(rq);
}