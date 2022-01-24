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
struct request {int dummy; } ;
struct TYPE_2__ {int* feature; } ;
struct dasd_eckd_private {unsigned int fcx_max_data; TYPE_1__ features; scalar_t__ uses_cdl; int /*<<< orphan*/  rdc_data; } ;
struct dasd_device {scalar_t__ private; } ;
struct dasd_ccw_req {int dummy; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; struct dasd_device* base; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dasd_ccw_req* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_ccw_req*) ; 
 scalar_t__ READ ; 
 scalar_t__ WRITE ; 
 unsigned int FUNC3 (struct request*) ; 
 int FUNC4 (struct request*) ; 
 int FUNC5 (struct request*) ; 
 struct dasd_ccw_req* FUNC6 (struct dasd_device*,struct dasd_block*,struct request*,int,int,int,int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 struct dasd_ccw_req* FUNC7 (struct dasd_device*,struct dasd_block*,struct request*,int,int,int,int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 struct dasd_ccw_req* FUNC8 (struct dasd_device*,struct dasd_block*,struct request*,int,int,int,int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ dasd_page_cache ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC10 (struct request*) ; 
 unsigned int FUNC11 (int,unsigned int) ; 

__attribute__((used)) static struct dasd_ccw_req *FUNC12(struct dasd_device *startdev,
					       struct dasd_block *block,
					       struct request *req)
{
	int cmdrtd, cmdwtd;
	int use_prefix;
	int fcx_multitrack;
	struct dasd_eckd_private *private;
	struct dasd_device *basedev;
	sector_t first_rec, last_rec;
	sector_t first_trk, last_trk;
	unsigned int first_offs, last_offs;
	unsigned int blk_per_trk, blksize;
	int cdlspecial;
	unsigned int data_size;
	struct dasd_ccw_req *cqr;

	basedev = block->base;
	private = (struct dasd_eckd_private *) basedev->private;

	/* Calculate number of blocks/records per track. */
	blksize = block->bp_block;
	blk_per_trk = FUNC9(&private->rdc_data, 0, blksize);
	if (blk_per_trk == 0)
		return FUNC0(-EINVAL);
	/* Calculate record id of first and last block. */
	first_rec = first_trk = FUNC4(req) >> block->s2b_shift;
	first_offs = FUNC11(first_trk, blk_per_trk);
	last_rec = last_trk =
		(FUNC4(req) + FUNC5(req) - 1) >> block->s2b_shift;
	last_offs = FUNC11(last_trk, blk_per_trk);
	cdlspecial = (private->uses_cdl && first_rec < 2*blk_per_trk);

	fcx_multitrack = private->features.feature[40] & 0x20;
	data_size = FUNC3(req);
	/* tpm write request add CBC data on each track boundary */
	if (FUNC10(req) == WRITE)
		data_size += (last_trk - first_trk) * 4;

	/* is read track data and write track data in command mode supported? */
	cmdrtd = private->features.feature[9] & 0x20;
	cmdwtd = private->features.feature[12] & 0x40;
	use_prefix = private->features.feature[8] & 0x01;

	cqr = NULL;
	if (cdlspecial || dasd_page_cache) {
		/* do nothing, just fall through to the cmd mode single case */
	} else if ((data_size <= private->fcx_max_data)
		   && (fcx_multitrack || (first_trk == last_trk))) {
		cqr = FUNC8(startdev, block, req,
						    first_rec, last_rec,
						    first_trk, last_trk,
						    first_offs, last_offs,
						    blk_per_trk, blksize);
		if (FUNC1(cqr) && (FUNC2(cqr) != -EAGAIN) &&
		    (FUNC2(cqr) != -ENOMEM))
			cqr = NULL;
	} else if (use_prefix &&
		   (((FUNC10(req) == READ) && cmdrtd) ||
		    ((FUNC10(req) == WRITE) && cmdwtd))) {
		cqr = FUNC7(startdev, block, req,
						   first_rec, last_rec,
						   first_trk, last_trk,
						   first_offs, last_offs,
						   blk_per_trk, blksize);
		if (FUNC1(cqr) && (FUNC2(cqr) != -EAGAIN) &&
		    (FUNC2(cqr) != -ENOMEM))
			cqr = NULL;
	}
	if (!cqr)
		cqr = FUNC6(startdev, block, req,
						    first_rec, last_rec,
						    first_trk, last_trk,
						    first_offs, last_offs,
						    blk_per_trk, blksize);
	return cqr;
}