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
struct request {int /*<<< orphan*/  buffer; TYPE_1__* rq_disk; } ;
struct hd_i_struct {unsigned int sect; unsigned int head; scalar_t__ special_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_name; struct hd_i_struct* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CMD_PIO_READ ; 
 int /*<<< orphan*/  ATA_CMD_PIO_WRITE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  HD_DATA ; 
#define  READ 129 
#define  WRITE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 struct request* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 unsigned int FUNC3 (struct request*) ; 
 unsigned int FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  device_timer ; 
 int /*<<< orphan*/ * do_hd ; 
 scalar_t__ FUNC6 (struct hd_i_struct*,struct request*) ; 
 unsigned int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hd_i_struct*,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hd_queue ; 
 struct request* hd_req ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  read_intr ; 
 scalar_t__ FUNC12 (struct request*) ; 
 scalar_t__ reset ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct request*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  write_intr ; 

__attribute__((used)) static void FUNC16(void)
{
	unsigned int block, nsect, sec, track, head, cyl;
	struct hd_i_struct *disk;
	struct request *req;

	if (do_hd)
		return;
repeat:
	FUNC5(&device_timer);

	if (!hd_req) {
		hd_req = FUNC1(hd_queue);
		if (!hd_req) {
			do_hd = NULL;
			return;
		}
	}
	req = hd_req;

	if (reset) {
		FUNC13();
		return;
	}
	disk = req->rq_disk->private_data;
	block = FUNC3(req);
	nsect = FUNC4(req);
	if (block >= FUNC7(req->rq_disk) ||
	    ((block+nsect) > FUNC7(req->rq_disk))) {
		FUNC11("%s: bad access: block=%d, count=%d\n",
			req->rq_disk->disk_name, block, nsect);
		FUNC8(-EIO);
		goto repeat;
	}

	if (disk->special_op) {
		if (FUNC6(disk, req))
			goto repeat;
		return;
	}
	sec   = block % disk->sect + 1;
	track = block / disk->sect;
	head  = track % disk->head;
	cyl   = track / disk->head;
#ifdef DEBUG
	printk("%s: %sing: CHS=%d/%d/%d, sectors=%d, buffer=%p\n",
		req->rq_disk->disk_name,
		req_data_dir(req) == READ ? "read" : "writ",
		cyl, head, sec, nsect, req->buffer);
#endif
	if (FUNC2(req)) {
		switch (FUNC14(req)) {
		case READ:
			FUNC9(disk, nsect, sec, head, cyl, ATA_CMD_PIO_READ,
				&read_intr);
			if (reset)
				goto repeat;
			break;
		case WRITE:
			FUNC9(disk, nsect, sec, head, cyl, ATA_CMD_PIO_WRITE,
				&write_intr);
			if (reset)
				goto repeat;
			if (FUNC15()) {
				FUNC0();
				goto repeat;
			}
			FUNC10(HD_DATA, req->buffer, 256);
			break;
		default:
			FUNC11("unknown hd-command\n");
			FUNC8(-EIO);
			break;
		}
	}
}