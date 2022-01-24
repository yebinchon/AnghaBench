#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request {char* buffer; TYPE_1__* rq_disk; } ;
struct amiga_floppy_struct {int blocks; char* trackbuf; int dirty; TYPE_3__* type; TYPE_2__* dtype; } ;
struct TYPE_6__ {unsigned int sect_mult; } ;
struct TYPE_5__ {unsigned int sects; } ;
struct TYPE_4__ {struct amiga_floppy_struct* private_data; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ READ ; 
 scalar_t__ FUNC0 (struct request*,int) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct request*) ; 
 unsigned int FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  floppy_queue ; 
 scalar_t__ flush_track_timer ; 
 int FUNC5 (int,unsigned int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,unsigned int,char*) ; 
 scalar_t__ FUNC11 (struct request*) ; 
 struct amiga_floppy_struct* unit ; 

__attribute__((used)) static void FUNC12(void)
{
	struct request *rq;
	unsigned int cnt, block, track, sector;
	int drive;
	struct amiga_floppy_struct *floppy;
	char *data;
	unsigned long flags;
	int err;

next_req:
	rq = FUNC1(floppy_queue);
	if (!rq) {
		/* Nothing left to do */
		return;
	}

	floppy = rq->rq_disk->private_data;
	drive = floppy - unit;

next_segment:
	/* Here someone could investigate to be more efficient */
	for (cnt = 0, err = 0; cnt < FUNC2(rq); cnt++) {
#ifdef DEBUG
		printk("fd: sector %ld + %d requested for %s\n",
		       blk_rq_pos(rq), cnt,
		       (rq_data_dir(rq) == READ) ? "read" : "write");
#endif
		block = FUNC3(rq) + cnt;
		if ((int)block > floppy->blocks) {
			err = -EIO;
			break;
		}

		track = block / (floppy->dtype->sects * floppy->type->sect_mult);
		sector = block % (floppy->dtype->sects * floppy->type->sect_mult);
		data = rq->buffer + 512 * cnt;
#ifdef DEBUG
		printk("access to track %d, sector %d, with buffer at "
		       "0x%08lx\n", track, sector, data);
#endif

		if (FUNC5(drive, track) == -1) {
			err = -EIO;
			break;
		}

		if (FUNC11(rq) == READ) {
			FUNC8(data, floppy->trackbuf + sector * 512, 512);
		} else {
			FUNC8(floppy->trackbuf + sector * 512, data, 512);

			/* keep the drive spinning while writes are scheduled */
			if (!FUNC4(drive)) {
				err = -EIO;
				break;
			}
			/*
			 * setup a callback to write the track buffer
			 * after a short (1 tick) delay.
			 */
			FUNC7(flags);

			floppy->dirty = 1;
		        /* reset the timer */
			FUNC9 (flush_track_timer + drive, jiffies + 1);
			FUNC6(flags);
		}
	}

	if (FUNC0(rq, err))
		goto next_segment;
	goto next_req;
}