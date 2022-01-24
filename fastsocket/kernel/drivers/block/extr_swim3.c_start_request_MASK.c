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
struct request {int /*<<< orphan*/  errors; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cmd; TYPE_1__* rq_disk; } ;
struct floppy_state {scalar_t__ state; scalar_t__ total_secs; scalar_t__ write_prot; long req_cyl; long secpercyl; unsigned long head; unsigned long secpertrack; unsigned long req_sector; scalar_t__ retries; scalar_t__ ejected; int /*<<< orphan*/  wait; scalar_t__ wanted; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  WRITE_PROT ; 
 int /*<<< orphan*/  FUNC0 (struct floppy_state*) ; 
 scalar_t__ available ; 
 struct request* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ do_transfer ; 
 struct request* fd_req ; 
 scalar_t__ idle ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swim3_queue ; 
 scalar_t__ FUNC8 (struct floppy_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct floppy_state *fs)
{
	struct request *req;
	unsigned long x;

	if (fs->state == idle && fs->wanted) {
		fs->state = available;
		FUNC9(&fs->wait);
		return;
	}
	while (fs->state == idle) {
		if (!fd_req) {
			fd_req = FUNC1(swim3_queue);
			if (!fd_req)
				break;
		}
		req = fd_req;
#if 0
		printk("do_fd_req: dev=%s cmd=%d sec=%ld nr_sec=%u buf=%p\n",
		       req->rq_disk->disk_name, req->cmd,
		       (long)blk_rq_pos(req), blk_rq_sectors(req), req->buffer);
		printk("           errors=%d current_nr_sectors=%u\n",
		       req->errors, blk_rq_cur_sectors(req));
#endif

		if (FUNC3(req) >= fs->total_secs) {
			FUNC7(-EIO);
			continue;
		}
		if (fs->ejected) {
			FUNC7(-EIO);
			continue;
		}

		if (FUNC6(req) == WRITE) {
			if (fs->write_prot < 0)
				fs->write_prot = FUNC8(fs, WRITE_PROT);
			if (fs->write_prot) {
				FUNC7(-EIO);
				continue;
			}
		}

		/* Do not remove the cast. blk_rq_pos(req) is now a
		 * sector_t and can be 64 bits, but it will never go
		 * past 32 bits for this driver anyway, so we can
		 * safely cast it down and not have to do a 64/32
		 * division
		 */
		fs->req_cyl = ((long)FUNC3(req)) / fs->secpercyl;
		x = ((long)FUNC3(req)) % fs->secpercyl;
		fs->head = x / fs->secpertrack;
		fs->req_sector = x % fs->secpertrack + 1;
		fd_req = req;
		fs->state = do_transfer;
		fs->retries = 0;

		FUNC0(fs);
	}
}